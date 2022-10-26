def pedirNumero(lista):
    for numero in lista:
        print(numero,end=" ")
    num=int(input("\nIngresa el número a buscar: "))
    return num

def busquedaSecuencia(lista,num):
    for i in range(0,len(lista)):
        if num==lista[i]:
            return True
    return False

lista=[1,2,3,4,5,10,11,23,40,6,100]
while True:
    num=pedirNumero(lista)
    encontrado=busquedaSecuencia(lista,num)
    if encontrado==True:
        print("El número",num,"lo ha encontrado perfectamente.")
        break
    else:
        print("No se encuentra en la lista, intentalo de nuevo:")
