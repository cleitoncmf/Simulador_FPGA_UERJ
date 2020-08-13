#ifndef CMFFIXEDOP_
#define CMFFIXEDOP_


// biblioteca usada para ponto fixo
#include <ap_fixed.h>


// Fixed-point de 18 bits, com 6 bits a esquerda do ponto.
typedef  ap_fixed<18,6> data_t;


//Cabeçalhos
void CMFfixedop(data_t Entrada1, data_t Entrada2, data_t *Saida1, data_t *Saida2);




#endif
