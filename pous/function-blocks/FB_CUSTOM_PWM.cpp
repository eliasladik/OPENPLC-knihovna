FUNCTION_BLOCK FB_CUSTOM_PWM
  VAR_INPUT
    PinNr : UINT := 2; (* default: PinNr = 2 (Backlight) *)
    iDutycycle : INT; (* Střída v procentech: 0 ... 100 % *)
    bEnable : BOOL := FALSE;
  END_VAR
  VAR_OUTPUT
    bActive : BOOL;    (* TRUE: PWM výstup je aktivní (> 0 %) *)
    bError : BOOL;     (* TRUE: Vstup iDutycycle > 100 % *)
    wRawDuty : UINT;   (* Hodnota zápisu do PWM registru: 0 ... 4095 *)
  END_VAR
  VAR_EXTERNAL
  END_VAR
/* ================================================================
 *  C/C++ FUNCTION BLOCK
 * ================================================================ */

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <Arduino.h>

// Nastavení rozlišení a maximální hodnota střídy podle architektury
#if defined(ESP32)
  const int PWM_FREQU = 1000;
  const int PWM_RES = 12;
  const int MAX_DUTY_CYCLE = (1 << PWM_RES) - 1; // 4095 (12 bitů)
#elif defined(ESP8266)
  const int MAX_DUTY_CYCLE = 1023;                // 1023 (10 bitů)
#else
  // AVR Arduino (Uno, Mega, Nano), STM32, RP2040 atd.
  const int MAX_DUTY_CYCLE = 255;                 // 255 (8 bitů)
#endif

void setup()
{
  #if defined(ESP32)
    ledcAttach(PinNr, PWM_FREQU, PWM_RES);
  #elif defined(ESP8266)
    analogWriteFreq(1000); // Nastavení frekvence PWM 1 kHz pro ESP8266
  #endif
}

void loop()
{ 
  // Detekce chyby rozsahu vstupu (mimo rozsah 0 až 100 %)
  bError = (iDutycycle < 0) || (iDutycycle > 100);

  int dimmer = 0;

  // Výpočet střídy proběhne pouze při povolení a platném vstupu
  if (bEnable && !bError)
  {
    int dutyPercent = constrain((int)iDutycycle, 0, 100);
    dimmer = map(dutyPercent, 0, 100, 0, MAX_DUTY_CYCLE);
  }

  // Zápis na HW pin podle mikrokontroléru
  #if defined(ESP32)
    ledcWrite(PinNr, dimmer);
  #else
    analogWrite(PinNr, dimmer);
  #endif

  // Aktualizace stavových výstupů PLC
  wRawDuty = (uint16_t)dimmer;
  bActive = bEnable && (dimmer > 0);
}

END_FUNCTION_BLOCK