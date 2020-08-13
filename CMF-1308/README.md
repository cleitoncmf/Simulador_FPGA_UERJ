# Testes realizados no dia 13/08/2020

É bom dá uma olhada no diretório **Testes-CMF-12-08-2020**. Este daqui continua os testes iniciados lá


## Lista de IPs desenvolvidos

1. **CMFtesteprecision**: Lê um bit e retorna a versão barrada dele
2. **CMFtestefloat**: testa o uso de variáveis float. Não funcionou
3. **CMFtestefixed**: Testa variáveis de ponto fixo (faz um soma). Tabém é o primeiro caso que usei C++.
4. **CMFfixedop**: Testa operações de multiplicação com ponto fixo


## Lista de Designs no VIVADO

1. **design_TestePrecision**: testa o IP **CMFtesteprecision**
2. **design_Testefloat**: tá vazio
3. **design_Tcmffixed**: testa o IP **CMFtestefixed**
4. **design_T_fixedop**: Simula o **CMFfixedop**


## Alguns Comentários

* *Variable precision*:
  No diretório **Testes-CMF-12-08-2020**, comentei que a utilização de variávies de um bit, criadas com a biblioteca *ap_cint* não tinha funcionado. Aqui funciou perfeitamente, vide **CMFtesteprecision**. Provavelmente devo ter tido algum erro de digitação lá.

* *float-point*:
Até onde entendi, não é possivel usar variáveis do tipo float. O HLS sintetiza sem erro, mas nada é gerado. No [manual](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug902-vivado-high-level-synthesis.pdf), por outro lado, é indicado a utilização de ponto fixo. Tem uma bibliuoteca para isso, e uma bom explicação é apresentada na página 81. 

* *float-point 2*:
Depois do teste, encontrei um [video](https://www.xilinx.com/video/hardware/vivado-hls-sw-libraries-in-your-c-system-c-code.html) e o aplication note  [xapp599](https://www.xilinx.com/support/documentation/application_notes/xapp599-floating-point-vivado-hls.pdf) falando sobre o uso de ponto flutuante com o VOVADO HLS. Neste caso, é preciso uma biblioteca, já instalada, para fazer isso. Ou seja, não é tão direto quanto o caso que fiz no ip **CMFtestefloat**.


* *fixed point*:
  Para gerar variáveis de ponto fixo, temos que usar a biblioteca *ap_fixed*, como mostrado em **CMFtestefixed**.  Tem um exemplo, como mencionado, na página 81 do [manual](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug902-vivado-high-level-synthesis.pdf), mas é preciso ficar atento. A linha <code>ap_fixed<18,6,AP_RND > my_type;</code> está definido uma variável chamada *my_type*, não um tipo de variável. Para definir um dipo, devemos usar <code>typedef ap_fixed<18,6,AP_RND > my_type;</code>.

* *Multiplicações em ponto-fixo*:
O IP **CMFfixedop** tem duas saídas, uma a soma e outra a multiplicação dos sinais de entrada. A soma está correta, a multiplicação não. Acho que tem a ver com overflow e quantização. Tem uma explicação destes conheitos a partir da página 633 do [manual](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug902-vivado-high-level-synthesis.pdf).

* *Problema na geração de um IP (resolvido)*:
  Em um momento, o vivado não conseguiu gerar o IP. Pensei que o problema era com a biblioteca *ap_fixed*, mas ao reiniciar o vivado, tudo funcionou devidamente.


