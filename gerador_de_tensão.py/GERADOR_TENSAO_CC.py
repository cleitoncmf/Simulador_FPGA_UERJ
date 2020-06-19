# -*- coding: utf-8 -*-
"""
Created on Fri Jun 19 16:33:59 2020

@author: Renan
"""




import os
import math
import matplotlib.pyplot as plt
import matplotlib.ticker as tck
import scipy.interpolate
import numpy as np

vp=5

t=0
#------


exp=8
bits=2**exp
tempo=[]
n=1
dt=(n/bits)


fonte_tensao=[]


tempo = np.linspace(0,bits-1,bits)

teste_tensao=[]

for i in range (0,bits,1):

    fonte_tensao.append(vp)
  
   
'''
tempo2 = np.linspace(0,2**(exp-6)-1,2**(exp-6))
fonte_tensao2=[]
for i in range (0,2**(exp-6),1):
    fonte_tensao2.append(fonte_tensao[i])
    
'''


    
fig3 = plt.gcf() #cria a figura    
plt.rcParams['figure.figsize'] = (60,40) #tamanho do gráfico
fig3, ax = plt.subplots() #anexa os subplots na figura
ax.yaxis.set_minor_locator(tck.AutoMinorLocator())
plt.rcParams.update({'font.size': 22})


plt.title("Voltage x Time",fontsize=50)



plt.xlabel('Time [s]',fontsize=50) #nome do eixo x
plt.ylabel('Voltage [V]',fontsize=50) #nome do eixo y

plt.xlabel('Tempo [s]',fontsize=50) #nome do eixo x
plt.plot(tempo,fonte_tensao, color='red',linewidth=3.0, linestyle = '-',label="Voltage")#,marker=".",markersize=50) #dois graficos em 1
plt.legend(loc="upper right",prop={'size': 50})

#plt.fill_between(x,0,y, color = 'grey') #pinta a área sob a curva
plt.grid(True, which='both')
plt.tick_params(labelsize=50); 





resultado = "{}\n"
arquivo = open("fonte_tensao_CC.txt","w")
#mudar para sine.mem caso queira integrar direto para o vivado



for i in range(0,len(fonte_tensao),1):
    arquivo.write(resultado.format(hex(int((fonte_tensao[i])))))


arquivo.close

