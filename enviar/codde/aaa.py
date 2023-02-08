lista = [
    ['p1',21],  
    ['p2',12],
    ['p3',92],
    ['p4',6],
    ['p5',11],
]

def func(item):
    return item [1]

lista.sort(key=func)
print(lista)

#forma mais fácil a baixo

lista = [
    ['p1',21],  
    ['p2',12],
    ['p3',92],
    ['p4',6],
    ['p5',11],
]

#não precisa de funcao, fé fml

lista.sort(key=lambda item: item[1])
print(lista)
