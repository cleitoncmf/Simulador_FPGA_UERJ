#include"cmfteste2.h"


void CMFteste2(data_t *Saida){

    static data_t N = 0;


    if(N<100){
        N = N+1;
    }
    else{
        N = 0;
    }

    *Saida = N;


}