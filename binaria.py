#GUDIÑO MENDEZ GABRIEL ALEJANDRO

# def busqueda_binaria(lista, valor):
#     steps = 0
#     izq = 0
#     der = len(lista) - 1
    
#     while izq <= der:
#         steps += 1
#         punto_medio = (izq + der) / 2

#         if lista[punto_medio] == valor:
#             return "Valor encontrado en {} pasos, en la posición {}.".format(steps,punto_medio)

#         elif lista[punto_medio] > valor:
#             der = punto_medio - 1

#         else: #lista[punto_medio] < valor:
#             #izq = punto_medio + 1
#             return "Elemento no encontrado"
        
# lista = (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
# for i in lista:
#     print(i,end=" ")
# valor=int(input("\nNumero a buscar: "))
# #resultado = busqueda_binaria(lista, valor)
# #print("Resultado: ",resultado) 
# position = busqueda_binaria(lista, valor)
# print(position)

from email.encoders import encode_noop
from random import randint, uniform, random
import numpy as np
import time

#valores=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]
valores = np.random.randint(1,100,10)

for i in valores:
    print(i,end=" ")
print("\n")

def busquedaBinaria(buscar,inicio,fin,iteraciones):

    start = time.process_time()

    # buscamos el elemento central del array entre dos posiciones
    centro=int((fin-inicio)/2)+inicio
 
    if centro>len(valores)-1 or inicio>fin:
        return (False,iteraciones)
 
    if buscar>valores[centro]:
        return busquedaBinaria(buscar,centro+1,fin,iteraciones+1)
    elif buscar<valores[centro]:
        return busquedaBinaria(buscar,inicio,centro-1,iteraciones+1)
    else:
        return (True,iteraciones)
 
while True:
    buscar=input("indica un numero a buscar: ")
    if buscar=="":
        break
 
    try:
        buscar=int(buscar)
    except:
        print("El valor tienes que ser numerico")
        continue
 
    conseguido,iteraciones=busquedaBinaria(buscar,0,len(valores),1)
    if conseguido:
        print("Encontrado en {} iteraciones".format(iteraciones))
        end = time.process_time()
        print("Tiempo:",end,"segundos")
    else:
        print("El valor introducido no se encuentra en la lista de valores. Se han necesitado {} iteraciones".format(iteraciones))