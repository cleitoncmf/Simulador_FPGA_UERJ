# Testes do dia 25/08


Alguns testes que servirão para simulação em tempo real


## IPs desenvolvidos

1. **CMFinterrupt**: Não funcionou
2. **CMFinterrupt2**: Desenvolvi uma estrutura simular ao de interrupção
3. **CMFRL1**: Tentei simular um circuito RL: não funcionou

## Designs do VIVADO

1. **design_interrupt**: Testa o IP **CMFinterrupt**
2. **design_interrupt2**: Testa o IP **CMFinterrupt2**
3. **design_RL1** Testa o IP **CMFRL1**


## Comentários

* Parece que em **CMFRL1**, o HLS está paralelizaando as linhas 20 e 22. Como o cálculo da linha 22 depende do resultado da linha 20, os dois ficam estacionados em ZERO. Fiz e desfiz varios testes e constatei que as operações com ponto flutuante funcionam. O único problema é este aí.
