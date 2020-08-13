#include "CMF_teste_array_2.h"



// pulsoSinc será um sinal quadrado que usaremos para sinconisar as coisas
void CMF_teste_array_2(dsel_t pulsoSinc, dout_t *Saida){


    // Array de dados
    // A notação dos colchetes só serve na inicialização da variável
    dout_t dados[5] = {10,20,30,40,50};

    // novamente o static para que a variável não se "apague" quando a exucução da função for finalizada 
    static dout_t k;
    
    // Vou tentar simular um clock, depois vemos uma forma mais elegante
    // Deve ter "lixo" no primeiro ciclo, mas tudo bem
    static dsel_t SimCLK;

    if (pulsoSinc != SimCLK){
        SimCLK = pulsoSinc;
        if(k>=0 && k<4){
            k++;
        }
        else{
            k=0;
        }
    }
    else{
        if(k>4 || k<0){
            k = 0;
        }
    }

    *Saida = dados[k];



}


