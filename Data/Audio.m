#ifndef _AUDIO_VM
#define _AUDIO_VM
#include "Audio_f.h"
#define _l2u (*AudioVptr->V__l2u)
#define _u2l (*AudioVptr->V__u2l)
#define Audio_autocorrelation (*AudioVptr->V_Audio_autocorrelation)
#define Audio_complex_debug (*AudioVptr->V_Audio_complex_debug)
#define Audio_conjugate (*AudioVptr->V_Audio_conjugate)
#define Audio_difference (*AudioVptr->V_Audio_difference)
#define Audio_durbin (*AudioVptr->V_Audio_durbin)
#define Audio_lpc (*AudioVptr->V_Audio_lpc)
#define Audio_more (*AudioVptr->V_Audio_more)
#define Audio_r2_fft (*AudioVptr->V_Audio_r2_fft)
#define Audio_r2_ifft (*AudioVptr->V_Audio_r2_ifft)
#define Audio_r4_fft (*AudioVptr->V_Audio_r4_fft)
#define Audio_r4_ifft (*AudioVptr->V_Audio_r4_ifft)
#define Audio_shorts (*AudioVptr->V_Audio_shorts)
#define Audio_w (*AudioVptr->V_Audio_w)
#define float2linear (*AudioVptr->V_float2linear)
#define float2ulaw (*AudioVptr->V_float2ulaw)
#define linear2float (*AudioVptr->V_linear2float)
#define ulaw2float (*AudioVptr->V_ulaw2float)
#endif /* _AUDIO_VM */
