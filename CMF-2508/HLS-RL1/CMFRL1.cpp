#include"CMFRL1.h"




void CMFRL1(uint1_t sinc, data_t *i_RL, data_t *teste1, uint1_t *teste2){

    //static data_t vi = Vi;
    static data_t i_kp1; // kp1 = k+1 -> Novo valor de corrente
    static data_t i_k; // valor antido da corrente

    static uint1_t aux_sinc;

    if(aux_sinc == sinc){
        //faça nada
    }
    else{
        aux_sinc = sinc;
        
        i_k = i_kp1;

        i_kp1 = data_t(0.999)*i_k + data_t(0.01);//F(Vi,i_k); // Integração numerica: Euler Forward

    }

    *i_RL = i_kp1;

    *teste1 = i_k;

    *teste2 = aux_sinc;

}
