# Testes realizados no dia 13/08/2020

É bom dá uma olhada no diretório **Testes-CMF-12-08-2020**. Este daqui continua os testes iniciados lá


## Lista de IPs desenvolvidos

1. **CMFtesteprecision**: Lê um bit e retorna a versão barrada dele
2. **CMFtestefloat**: testa o uso de variáveis float. Não funcionou


## Lista de Designs no VIVADO

1. **design_TestePrecision**: testa o IP **CMFtesteprecision**
2. **design_Testefloat**: tá vazio


## Alguns Comentários

* *float-point*:
Até onde entendi, não é possivel usar variáveis do tipo float. O HLS sintetiza sem erro, mas nada é gerado. No [manual](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug902-vivado-high-level-synthesis.pdf), por outro lado, é indicado a utilização de ponto fixo. Tem uma bibliuoteca para isso, e uma bom explicação é apresentada na página 81.


