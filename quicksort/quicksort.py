import numpy as np
import time


def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)


if __name__ == "__main__":
    # gerando um array de 1.000.000 de elementos aleatórios
    arr = np.random.randint(1, 1000000, 1000000)
    print("Lista de 1.000.000 de elementos gerada...")

    # calculando o tempo de execução da função
    print("Ordenando...")
    tempo_inicial = time.time()  # em segundos
    arr = quick_sort(arr)
    tempo_final = time.time()  # em segundos

    # imprimindo o tempo de execução
    print("Tempo de execução: ", tempo_final - tempo_inicial)  # em segundos
