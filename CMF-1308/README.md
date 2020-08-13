# Testes realizados no dia 13/08/2020

É bom dá uma olhada no diretório **Testes-CMF-12-08-2020**. Este daqui continua os testes iniciados lá


## Lista de IPs desenvolvidos

1. **CMFtesteprecision**: Lê um bit e retorna a versão barrada dele
2. **CMFtestefloat**: testa o uso de variáveis float. Não funcionou


## Lista de Designs no VIVADO

1. **design_TestePrecision**: testa o IP **CMFtesteprecision**
2. **design_Testefloat**: tá vazio


## Alguns Comentários

* *Variable precision*:
  No diretório **Testes-CMF-12-08-2020**, comentei que a utilização de variávies de um bit, criadas com a biblioteca *ap_cint* não tinha funcionado. Aqui funciou perfeitamente, vide **CMFtesteprecision**. Provavelmente devo ter tido algum erro de digitação lá.

* *float-point*:
Até onde entendi, não é possivel usar variáveis do tipo float. O HLS sintetiza sem erro, mas nada é gerado. No [manual](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug902-vivado-high-level-synthesis.pdf), por outro lado, é indicado a utilização de ponto fixo. Tem uma bibliuoteca para isso, e uma bom explicação é apresentada na página 81. 

* *float-point 2*:
Depois do teste, encontrei um [video](https://www.xilinx.com/video/hardware/vivado-hls-sw-libraries-in-your-c-system-c-code.html) e o aplication note  [xapp599](https://www.xilinx.com/support/documentation/application_notes/xapp599-floating-point-vivado-hls.pdf) falando sobre o uso de ponto flutuante com o VOVADO HLS. Neste caso, é preciso uma biblioteca, já instalada, para fazer isso. Ou seja, não é tão direto quanto o caso que fiz no ip **CMFtestefloat**.


