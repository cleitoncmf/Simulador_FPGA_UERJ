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

t=0
#------
w=2*np.pi*f



tempo=[]
n=1
dt=(n/1024)

phi=-w*t

fonte_tensao=[]

v=vp*np.sin(w*t+phi)
tempo = np.linspace(0,1023,1024)


'''
for i in range (0,1024,1):
    tempo.append(i)
''' 
teste=[]    
teste_tensao=[]
for i in range (0,1024,1):
    phi=-0.368155
    t=t+dt
    teste.append(t)
    teste_tensao.append(vp*np.sin(round((w*t+phi),3)))
    fonte_tensao.append(vp*np.sin(round((w*t+phi),3))+5)
    '''
    if i==0:
        fonte_tensao.append(0)
           
    else:          
        t=t+dt
        fonte_tensao.append(vp*np.sin(w*t+phi)+5)
    '''    
        
'''
teste=[]
testeindex=[]
for i in range (0,1024,1):
    if fonte_tensao[i]<0:
        teste.append(fonte_tensao[i])
        testeindex.append(i)
        
'''    

tempo2 = np.linspace(0,17,18)
fonte_tensao2=[]
for i in range (0,18,1):
    fonte_tensao2.append(fonte_tensao[i])
    



    
fig3 = plt.gcf() #cria a figura    
plt.rcParams['figure.figsize'] = (60,40) #tamanho do gráfico
fig3, ax = plt.subplots() #anexa os subplots na figura
ax.yaxis.set_minor_locator(tck.AutoMinorLocator())
plt.rcParams.update({'font.size': 22})

plt.title("Voltage x Time",fontsize=50)

plt.xlabel('Time [s]',fontsize=50) #nome do eixo x
plt.ylabel('Voltage [V]',fontsize=50) #nome do eixo y



plt.xlabel('Tempo [s]',fontsize=50) #nome do eixo x
plt.plot(tempo2,fonte_tensao2, color='red',linewidth=3.0, linestyle = '-',label="Voltage",marker=".",markersize=50) #dois graficos em 1
plt.legend(loc="upper right",prop={'size': 50})
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

