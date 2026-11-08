#ifndef C_BLOCKS_H
#define C_BLOCKS_H

// The project's own generated declarations. Every struct field below is a
// strucpp type: an `IECVar<T>` / `IECStringVar<N>` wrapper for an elementary
// pin, and for a user-defined type the structure, enumeration or function block
// class the project declares. `generated.hpp` carries all of them, and pulls in
// the runtime headers transitively, so any translation unit that includes this
// header gets the whole surface regardless of include order.
//
// Every translation unit that includes this header is built at -std=gnu++17,
// which is what `generated.hpp` needs. On a Runtime v4 or Arduino target the
// POU glue and `c_blocks_code.cpp` are pre-compiled from
// `precompile/sources/` with the board's toolchain at that standard; on the
// baremetal/simulator path the flag is appended to the arduino-cli invocation
// so the sketch-side copy of `c_blocks_code.cpp` compiles identically. Only
// the core itself is left on whatever standard it ships with, and the core
// never includes this header.
#include "generated.hpp"

//definition of external blocks - HW_PWM
typedef struct {
  strucpp::IEC_BOOL *EN;
  strucpp::IEC_UINT *PIN;
  strucpp::IEC_UINT *DUTY;
  strucpp::IEC_BOOL *Q;
} HW_PWM_VARS;
extern "C" void hw_pwm_setup(HW_PWM_VARS *vars);
extern "C" void hw_pwm_loop(HW_PWM_VARS *vars);

#endif // C_BLOCKS_H
