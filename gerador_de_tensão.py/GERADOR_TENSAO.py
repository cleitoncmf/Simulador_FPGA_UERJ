# -*- coding: utf-8 -*-
"""
Created on Wed Jun 17 23:59:51 2020

@author: Renan
"""


import os
import math
import matplotlib.pyplot as plt
import matplotlib.ticker as tck
import scipy.interpolate
import numpy as np
f=60
vp=5
phi=0
t=0
#------
w=2*np.pi*f

v=vp*np.sin(w*t+phi)

tempo=[]
n=65535
dt=(n/1024)

fonte_tensao=[]

for i in range (0,1024,1):
    tempo.append(i)
    
for i in range (0,1024,1):
    if i==0:
        fonte_tensao.append(0)
           
    else:          
        t=t+dt
        fonte_tensao.append(vp*np.sin(w*t+phi))
'''
teste=[]
testeindex=[]
for i in range (0,1024,1):
    if fonte_tensao[i]<0:
        teste.append(fonte_tensao[i])
        testeindex.append(i)
        
'''        
fig3 = plt.gcf() #cria a figura    
plt.rcParams['figure.figsize'] = (60,10) #tamanho do gráfico
fig3, ax = plt.subplots() #anexa os subplots na figura
ax.yaxis.set_minor_locator(tck.AutoMinorLocator())
plt.rcParams.update({'font.size': 22})

plt.title("Voltage x Time",fontsize=50)

plt.xlabel('Time [s]',fontsize=50) #nome do eixo x
plt.ylabel('Voltage [V]',fontsize=50) #nome do eixo y



plt.xlabel('Tempo [s]',fontsize=50) #nome do eixo x
plt.plot(tempo,fonte_tensao, color='red',linewidth=8.0, linestyle = '-',label="Voltage") #dois graficos em 1
plt.legend(loc="upper right",prop={'size': 50})
plt.scatter(tempo,fonte_tensao, color='red', marker = '*')#, s= z) #dois graficos em 1
#plt.fill_between(x,0,y, color = 'grey') #pinta a área sob a curva
plt.grid(True, which='both')
plt.tick_params(labelsize=50); 


resultado = "{}\n"
arquivo = open("sine.txt","w")
#mudar para sine.mem caso queira integrar direto para o vivado

#arquivo.write(resultados)

for i in range(0,len(fonte_tensao),1):
    arquivo.write(resultado.format(hex(int(round(fonte_tensao[i],3)*100))))


arquivo.close

