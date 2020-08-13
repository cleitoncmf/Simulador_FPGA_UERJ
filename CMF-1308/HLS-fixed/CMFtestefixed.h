#ifndef CMFTESTEFIXED_
#define CMFTESTEFIXED_

// biblioteca usada para ponto fixo
#include <ap_fixed.h>

typedef  ap_fixed<18,6,AP_RND_ZERO> data_t;







//Cabeçalhos
data_t CMFtestefixed(data_t Entrada1, data_t Entrada2);


#endif
