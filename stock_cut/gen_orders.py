import random

# Script Python para gerar lista de pedidos e escrevê-la em um arquivo txt
def generate_orders_file(N, stock_length, filename):
    
    # Lista de pedidos (tamanhos) gerados aleatoriamente entre 1 e o tamanho fixo das barras
    orders = [random.randint(1, stock_length) for _ in range(N)]

    # Escrevendo a lista em um arquivo txt
    with open(filename, 'w') as file:
        for order in orders:
            file.write(f"{order}\n")


N = 2500000
stock_length = 100
# filename = "orders_1s.txt"
# filename = "orders_10s.txt"
filename = "orders_1min.txt"

generate_orders_file(N, stock_length, filename)
