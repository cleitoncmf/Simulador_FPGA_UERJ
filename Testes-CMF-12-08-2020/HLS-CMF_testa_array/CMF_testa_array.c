#include "CMF_testa_array.h"

data_t CMF_testa_array(){
    data_t dados[5] = {10,20,30,40,50};

    // o static garante que esta variável não seja apagada quando a função chegar no return
    static data_t k;
    

    //usei k>=0 para evitar que algum lixo comprometa a função 
    if (k < 4 && k>=0){
        k++;
        return dados[2];
    }
    else{
        k = 0;
        return dados[3];
    }


}
