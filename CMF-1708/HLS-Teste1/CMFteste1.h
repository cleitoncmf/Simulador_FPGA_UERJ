#ifndef CMFTESTE1_
#define CMFTESTE1_


// biblioteca usada para ponto fixo
#include <ap_fixed.h>




// Fixed-point de 18 bits, com 6 bits a esquerda do ponto.
typedef  ap_fixed<32,8, AP_TRN, AP_WRAP> data_t;




//CabeÃ§alho
void CMFteste1(data_t Entrada1, data_t Entrada2, data_t *Saida1, data_t *Saida2 );




#endif
