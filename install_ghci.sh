#!/bin/bash

# Atualizar os repositórios
sudo apt update

# Instalar o GHC e o GHCi
sudo apt install -y ghc

# Verificar se a instalação foi bem-sucedida
ghc --version

# Instalar o GHCi (se ainda não estiver instalado)
sudo apt install -y ghc

# Verificar se a instalação do GHCi foi bem-sucedida
ghci --version

echo "Instalação do GHC e GHCi concluída."
