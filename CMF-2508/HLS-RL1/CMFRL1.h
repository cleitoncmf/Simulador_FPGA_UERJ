#ifndef CMFRL1_
#define CMFRL1_

// biblioteca usada para ponto fixo
#include <hls_math.h>
#include "ap_int.h" //para "arbitrary precision" em C++


// Fixed-point de 32 bits, com 6 bits a esquerda do ponto.
//typedef  ap_fixed<24,6, AP_TRN, AP_WRAP> dataA_t;

// Definição dos tipos usados
typedef float data_t;
typedef ap_uint<1> uint1_t;


// Definições de constantes
#define L data_t(0.001)
#define R data_t(10)
#define Vi data_t(100)
#define Ts data_t(0.0000001) //Tô considerando um passo de integração de 100ns (Sinc tem que ter 200ns de período)

#define LTs data_t(Ts/L)

// Macro: lembrando que dy/dt = f(t, y)
#define F(v,i) (data_t(Ts/L)*(v) - data_t(R*Ts/L)*(i))


// Cabeçalho da função
void CMFRL1(uint1_t sinc, data_t *i_RL, data_t *teste1, uint1_t *teste2);



#endif
