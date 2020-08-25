#include "CMFinterrupt.h"


void CMFinterrupt(dinA_t Sinc, data_t *Saida){


    static dinA_t clk = 0;


    if (Sinc != clk)
    {
        /* code */
        clk = Sinc;

        *Saida++;
    }




}