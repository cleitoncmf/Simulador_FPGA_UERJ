#ifndef CMFTESTE2_
#define CMFTESTE2_


// biblioteca usada para ponto fixo
#include <ap_fixed.h>




// Fixed-point de 18 bits, com 6 bits a esquerda do ponto.
typedef  ap_fixed<32,8, AP_TRN, AP_WRAP> data_t;




//CabeÃ§alho
void CMFteste2(data_t *Saida);




#endif
