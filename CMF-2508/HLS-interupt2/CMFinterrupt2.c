#include"CMFinterrupt2.h"


void CMFinterrupt2(dinA_t sinc, data_t *Saida1, data_t *Saida2){



    static dinA_t aux_sinc;
    static data_t aux_saida2 = 1;

    *Saida1 = 5;


    if(aux_sinc == sinc){
        //nope
        //*Saida2 = *Saida2;
    }
    else{
        aux_sinc = sinc;
        aux_saida2 = aux_saida2 + 1;
    }

    *Saida2 = aux_saida2;


}
