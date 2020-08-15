#include"CMFfixmult.h"



void CMFfixMult(dataA_t EntradaA1, 
                dataA_t EntradaA2,
                dataB_t EntradaB1,
                dataB_t EntradaB2,
                dataA_t *SaidaA1,
                dataA_t *SaidaA2,
                dataB_t *SaidaB1){

                    *SaidaA1 = EntradaA1 * EntradaA2;
                    *SaidaA2 = EntradaB1 * EntradaB2;
                    *SaidaB1 = EntradaB1 * EntradaB2;

}