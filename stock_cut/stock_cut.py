from functools import reduce
import time

# Função auxiliar para carregar a lista de pedidos do arquivo txt
def load_orders_from_file(filename):
    orders = []

    with open(filename, 'r') as file:
        for line in file:
            order = int(line.strip())
            orders.append(order)

    return orders


def cutting_stock(orders, stock_length):

    # Array para armazenar as soluções parciais
    dp = [float('inf')] * (stock_length + 1)
    dp[0] = 0  # Pedidos com comprimento zero são desconsiderados

    for length in range(1, stock_length + 1):
        for demand in orders:
            if length - demand >= 0:
                dp[length] = min(dp[length], dp[length - demand] + 1)

    # O valor em dp[stock_length] agora contém o número mínimo de barras necessárias
    return dp[stock_length]


def cutting_stock_functional(orders, stock_length):
    # Função auxiliar para atualizar a tabela dp
    def update_dp(dp, order):
        return [min(length, dp[length - order] + 1) if length - order >= 0 else dp[length] for length in range(stock_length + 1)]

    # Inicialização da tabela dp
    dp = reduce(update_dp, orders, [float('inf')] * (stock_length + 1))
    dp[0] = 0

    # O valor em dp[stock_length] agora contém o número mínimo de barras necessárias
    return dp[stock_length]


if __name__ == "__main__":
    file = open("results.txt", "w")
    print("Resultados do Corte de Estoque (Python):", file=file)

    # Dados de entrada
    # stock_length = int(input("Informe o tamanho fixo das barras: "))
    # N = int(input("Digite o tamanho da lista de pedidos: "))
    stock_length = 100

    # Carregando a lista de pedidos do arquivo txt
    # orders = load_orders_from_file("orders_1s.txt")
    # orders = load_orders_from_file("orders_10s.txt")
    orders = load_orders_from_file("orders_1min.txt")

    # calculando o tempo de execução da função com construções funcionais
    tempo_inicial = time.time()  # em segundos
    result = cutting_stock_functional(orders, stock_length)
    print(f"Número mínimo de barras de estoque necessárias (fc): {result}")
    tempo_final = time.time()  # em segundos

    # imprimindo o tempo de execução
    print("\nCom construções funcionais:", file=file)
    print("Tempo de execução: ", tempo_final -
          tempo_inicial, file=file)  # em segundos

    # calculando o tempo de execução da função sem construções funcionais
    tempo_inicial = time.time()  # em segundos
    result = cutting_stock(orders, stock_length)
    print(f"Número mínimo de barras de estoque necessárias: {result}")
    tempo_final = time.time()  # em segundos

    # imprimindo o tempo de execução
    print("\nSem construções funcionais:", file=file)
    print("Tempo de execução: ", tempo_final -
          tempo_inicial, file=file)  # em segundos

    file.close()
