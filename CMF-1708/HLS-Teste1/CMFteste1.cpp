#include"CMFteste1.h"


void CMFteste1(data_t Entrada1, data_t Entrada2, data_t *Saida1, data_t *Saida2 ){



    *Saida1 = Entrada1 * Entrada2;
    *Saida2 = Entrada2 * (Entrada2 + data_t(1.52)); //em c é chamado de cast



}