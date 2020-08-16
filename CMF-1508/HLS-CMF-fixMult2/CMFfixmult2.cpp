#include"CMFfixmult2.h"




void CMFfixMult2(dataA_t EntradaA1, 
                dataA_t EntradaA2,
                dataA_t *SaidaA1,
                dataA_t *SaidaA2,
                dataB_t *SaidaB1){



    *SaidaA1 = EntradaA1 * EntradaA2;
    *SaidaA2 = dataA_t(EntradaA1 * EntradaA2);

    *SaidaB1 = dataB_t(-2.47);

}