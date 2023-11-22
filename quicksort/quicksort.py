import numpy as np
import time


def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = []
    middle = []
    right = []
    for x in arr:
        if x < pivot:
            left.append(x)
        elif x == pivot:
            middle.append(x)
        else:
            right.append(x)
    return quick_sort(left) + middle + quick_sort(right)


def quick_sort_fc(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = list(filter(lambda x: x < pivot, arr))
    middle = list(filter(lambda x: x == pivot, arr))
    right = list(filter(lambda x: x > pivot, arr))
    return quick_sort_fc(left) + middle + quick_sort_fc(right)


if __name__ == "__main__":
    file = open("results.txt", "w")
    print("Resultados do quicksort (Python):", file=file)
    print("----- 1M de elementos -----\n", file=file)

    # gerando um array de 1.000.000 de elementos aleatórios
    arr = np.random.randint(1, 1000000, 1000000)
    print("Lista de 1M de elementos gerada...")

    # calculando o tempo de execução da função com construções funcionais
    print("Ordenando utilizando construções funcionais...")
    tempo_inicial = time.time()  # em segundos
    arr = quick_sort_fc(arr)
    tempo_final = time.time()  # em segundos

    # imprimindo o tempo de execução
    print("\nCom construções funcionais:", file=file)
    print("Tempo de execução: ", tempo_final -
          tempo_inicial, file=file)  # em segundos

    # calculando o tempo de execução da função sem construções funcionais
    print("\nOrdenando sem utilizar construções funcionais...")
    tempo_inicial = time.time()  # em segundos
    arr = quick_sort(arr)
    tempo_final = time.time()  # em segundos

    # imprimindo o tempo de execução
    print("\nSem construções funcionais:", file=file)
    print("Tempo de execução: ", tempo_final -
          tempo_inicial, file=file)  # em segundos

    file.close()
