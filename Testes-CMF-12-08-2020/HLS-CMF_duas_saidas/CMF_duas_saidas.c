#include "CMF_duas_saidas.h"

// Esta função possui duas sídas (muito útil).
// Ela não tem retorno porque é do timpo void
// As saídas são implementadas usando ponteiros



// o asterisco significa ponteiro
void CMF_duas_saidas(data_t *Saida1, data_t *Saida2, data_t Entrada){

    *Saida1 = Entrada + 1;
    *Saida2 = Entrada + 2;
}