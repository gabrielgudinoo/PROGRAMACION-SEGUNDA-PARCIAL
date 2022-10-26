# GUDIÑO MÉNDEZ GABRIEL ALEJANDRO

from email.encoders import encode_noop
from random import randint, uniform, random
import numpy as np
import time

def pedirNumero(lista):
    for numero in lista:
        print(numero,end=" ")
    num = int(input("\nIngresa el número a buscar: "))
    return num

def busquedaSecuencia(lista,num):
    start = time.process_time()
    for i in range(0,len(lista)):
        if (num==lista[i]) & (num in lista):
        #if (num in lista == True) & (num == lista[i]):
        #if num==lista[i]:
            #respuesta[0] = i
            #respuesta[1] = True
            resultado = i
            return True, resultado
    else:
            #respuesta[1] = False
        return False, 0

#lista=[1,2,3,4,5,10,11,23,40,6,100]
lista = np.random.randint(1,100,10)

while True:
    num=pedirNumero(lista)
    encontrado, numeroencontrado = busquedaSecuencia(lista,num)
    if encontrado == True:
    #if True in encontrado:
        end = time.process_time()
        print("El número",num,"lo ha encontrado perfectamente, posición/índice",numeroencontrado)
        print("Tiempo:",end,"segundos")
        break
    #elif encontrado == False:
    else:
        print("No se encuentra en la lista, intentalo de nuevo:")