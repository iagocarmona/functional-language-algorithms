import random
import time


def cutting_stock(demands, stock_length):
    # Inicializando uma tabela para armazenar as soluções parciais
    dp = [float('inf')] * (stock_length + 1)
    dp[0] = 0  # Pedidos com comprimento zero são desconsiderados

    for length in range(1, stock_length + 1):
        for demand in demands:
            if length - demand >= 0:
                dp[length] = min(dp[length], dp[length - demand] + 1)

    # O valor em dp[stock_length] agora contém o número mínimo de barras necessárias
    return dp[stock_length]


if __name__ == "__main__":
    file = open("results.txt", "w")
    print("Resultados do Corte de Estoque (Python):", file=file)

    # Dados de entrada
    # stock_length = int(input("Informe o tamanho fixo das barras: "))
    # N = int(input("Digite o tamanho da lista de pedidos: "))
    stock_length = 100
    N = 1000000

    # Lista de pedidos (tamanhos) gerados aleatoriamente entre 1 e o tamanho fixo das barras
    orders = [random.randint(1, stock_length) for _ in range(N)]

    # calculando o tempo de execução da função com construções funcionais
    # tempo_inicial = time.time()  # em segundos
    # result = cutting_stock_fc(orders, stock_length)
    # print(f"Número mínimo de barras de estoque necessárias: {result}")
    # tempo_final = time.time()  # em segundos

    # imprimindo o tempo de execução
    # print("\nCom construções funcionais:", file=file)
    # print("Tempo de execução: ", tempo_final - tempo_inicial, file=file)  # em segundos

    # calculando o tempo de execução da função sem construções funcionais
    tempo_inicial = time.time()  # em segundos
    result = cutting_stock([33, 30], 100)
    print(f"Número mínimo de cortes: {result}")
    tempo_final = time.time()  # em segundos

    # imprimindo o tempo de execução
    print("\nSem construções funcionais:", file=file)
    print("Tempo de execução: ", tempo_final -
          tempo_inicial, file=file)  # em segundos

    file.close()
