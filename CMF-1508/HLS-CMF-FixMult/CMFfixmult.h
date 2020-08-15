#ifndef CMFFIXMULT_
#define CMFFIXMULT_


// biblioteca usada para ponto fixo
#include <ap_fixed.h>




// Fixed-point de 18 bits, com 6 bits a esquerda do ponto.
typedef  ap_fixed<18,6, AP_TRN, AP_SAT> dataA_t;
typedef  ap_fixed<9,3, AP_TRN, AP_SAT> dataB_t;



//Cabeçalho
void CMFfixMult(dataA_t EntradaA1, 
                dataA_t EntradaA2,
                dataB_t EntradaB1,
                dataB_t EntradaB2,
                dataA_t *SaidaA1,
                dataA_t *SaidaA2,
                dataB_t *SaidaB1);



#endif