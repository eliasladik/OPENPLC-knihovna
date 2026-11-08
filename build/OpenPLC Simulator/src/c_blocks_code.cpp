#include <cstdint>
#include <cstring>

#ifdef ARDUINO
#include <Arduino.h>
// Arduino declares several of its helpers as function-like preprocessor macros,
// and every one of them collides with a standard-library name that the headers
// below pull in: `min` / `max` with the `std::min` / `std::max` templates and
// `numeric_limits<T>::min()` / `max()`, and `abs` with `std::abs` — which is
// worse, because `<chrono>` (reached transitively on the mbed cores) calls
// `abs` with a template argument list the one-parameter macro cannot swallow:
// `macro "abs" passed 2 arguments, but takes just 1`, and the standard header
// then fails to parse.
//
// The AVR targets never showed it, because their libstdc++ is the vendored
// freestanding port and never reaches `<chrono>`. An mbed board does.
//
// `constrain` and `sq` are left alone: neither shadows a standard name, so
// user code keeps them.
#undef min
#undef max
#undef abs
// `round` is the same story: Energia defines it as a macro and `<chrono>`
// declares `chrono::round<ToDur>()`, so the macro swallows the call and the
// header fails to parse. Undef'd here because the include that trips over it is
// in this preamble. `std::round` / `::round` from <cmath> remain available.
#undef round
// `MIN` and `MAX` in capitals, which the IEC standard library declares as
// variadic templates (`MAX(a, b, c)`) while several cores define them as
// two-argument macros — ST's USB device library does, and it sits on the include
// path every STM32, mbed and rp2040 recipe builds. The macro wins, and
// `iec_std_lib.hpp` fails with "macro MAX passed 3 arguments, but takes just 2"
// before any user code is read. Same reasoning as the lowercase pair above.
#undef MIN
#undef MAX
// `CONCAT` for the same reason, one core further along: Zephyr's `sys/util.h`
// defines it as a variadic token-pasting macro, and the IEC standard library
// declares it as a function template. The macro swallows the declaration and
// `iec_string.hpp` fails on a token-pasting error it cannot reach past, before any
// user code is read. Any IEC standard name a core happens to use as a macro
// lands here; these are the ones met so far.
#undef CONCAT
// Energia numbers the GPIO ports as the macros `PA` through `PT`, each two
// letters a PLC program is likely to want. `PT` is the preset-time input of
// every IEC standard timer, so a project holding a TON, TOF or TP expanded the
// struct strucpp emits into `IEC_TIME 18;`. The whole family goes, since a port
// letter is not how anything addresses a pin from a C block.
#undef PA
#undef PB
#undef PC
#undef PD
#undef PE
#undef PF
#undef PG
#undef PH
#undef PJ
#undef PK
#undef PL
#undef PM
#undef PN
#undef PP
#undef PQ
#undef PR
#undef PS
#undef PT
#endif

// The C block interface — the `<POU>_VARS` struct for every C++ POU in this
// project, and the `extern "C"` declarations of the setup/loop entry points
// defined below.  Declared once, in c_blocks.h, and included rather than
// restated here: the POU glue strucpp emits includes the same header, so the
// two sides cannot describe the struct differently.
//
// It transitively carries `generated.hpp` — the strucpp runtime wrappers plus
// this project's own structures, enumerations and function block classes — so a
// C block can name every type the Variables Table can declare.
//
// arduino-cli compiles this TU with the sketch, in the core's own standard —
// which is also what lets the block resolve its Arduino `#include`s. The
// strucpp runtime is C++14, so no separate pass is needed to reach it.
#include "c_blocks.h"

/*********************/
/*  IEC Types defs   */
/*********************/
//
// File-scope raw typedefs for the user's LOCAL variables inside
// setup() / loop() (e.g. `IEC_INT my_temp = 0;`).  The auto-
// generated POU struct fields use the fully-qualified
// `strucpp::IEC_*` wrappers and are unaffected by these aliases.
// STRING / WSTRING are NOT defined as raw POD structs here — local
// STRING variables should use `strucpp::IEC_STRING` directly
// (`IECStringVar<254>`), matching the wrapper used on pin fields.

typedef uint8_t  IEC_BOOL;

typedef int8_t    IEC_SINT;
typedef int16_t   IEC_INT;
typedef int32_t   IEC_DINT;
typedef int64_t   IEC_LINT;

typedef uint8_t    IEC_USINT;
typedef uint16_t   IEC_UINT;
typedef uint32_t   IEC_UDINT;
typedef uint64_t   IEC_ULINT;

typedef uint8_t    IEC_BYTE;
typedef uint16_t   IEC_WORD;
typedef uint32_t   IEC_DWORD;
typedef uint64_t   IEC_LWORD;

typedef float    IEC_REAL;
typedef double   IEC_LREAL;

// HW_PWM — Variables Table names bound to the interface struct
#define EN (*(vars->EN))
#define pin (*(vars->PIN))
#define duty (*(vars->DUTY))
#define Q (*(vars->Q))

/* ================================================================
 *  C/C++ FUNCTION BLOCK - Universal HW PWM
 * ================================================================ */

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

// Preprocesorové podmínky pro načtení knihoven podle architektury
#if defined(ARDUINO_ARCH_RP2040)
  #include "hardware/pwm.h"
  #include "hardware/gpio.h"
#elif defined(ESP32)
  #include "driver/ledc.h"
#elif defined(ARDUINO)
  #include <Arduino.h>
#endif

// Proměnná pro zapamatování pinu z minulého cyklu
static uint16_t last_pin = 65535;

// Called once when the block is initialized
void hw_pwm_setup(HW_PWM_VARS *vars)
{
    // Základní nulování výstupu při startu
    Q = false;
}

// Called at every PLC scan cycle
void hw_pwm_loop(HW_PWM_VARS *vars)
{
    if (EN) {
        // --- 1. RASPBERRY PI PICO (RP2040) ---
        #if defined(ARDUINO_ARCH_RP2040)
            if (last_pin != pin) {
                gpio_set_function(pin, GPIO_FUNC_PWM);
                uint slice_num = pwm_gpio_to_slice_num(pin);
                pwm_set_wrap(slice_num, 255);        // 8-bit rozlišení (0-255)
                pwm_set_clkdiv(slice_num, 49.0f);     // ~10 kHz frekvence
                pwm_set_enabled(slice_num, true);
                last_pin = pin;
            }
            pwm_set_gpio_level(pin, duty);

        // --- 2. ESP32 / ESP32-S3 ---
        #elif defined(ESP32)
            uint8_t channel = pin % 8; // Dynamické přiřazení kanálu (0-7)
            if (last_pin != pin) {
                ledcSetup(channel, 10000, 8); // 10 kHz, 8-bit rozlišení
                ledcAttachPin(pin, channel);
                last_pin = pin;
            }
            ledcWrite(channel, duty);

        // --- 3. ARDUINO / STM32 / OSTATNÍ ---
        #else
            if (last_pin != pin) {
                pinMode(pin, OUTPUT);
                last_pin = pin;
            }
            analogWrite(pin, duty);
        #endif

        Q = true;

    } else {
        // --- VYPNUTÍ VÝSTUPU PŘI EN = FALSE ---
        #if defined(ARDUINO_ARCH_RP2040)
            if (last_pin != 65535) {
                pwm_set_gpio_level(pin, 0);
            }
        #elif defined(ESP32)
            if (last_pin != 65535) {
                uint8_t channel = pin % 8;
                ledcWrite(channel, 0);
            }
        #else
            if (last_pin != 65535) {
                analogWrite(pin, 0);
            }
        #endif

        Q = false;
    }
}
#undef EN
#undef pin
#undef duty
#undef Q

