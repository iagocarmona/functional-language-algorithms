# functional-language-algorithms

---

# Primeiro de tudo

- Instale `ghci`

**Ubuntu:** execute o arquivo `install_ghci.sh`.

```bash
./install_ghci
```

# Como executar?

```bash
ghci exercises.hs
```

### Vai abrir o terminal do `ghci`

### Escreva `main` para mostrar as opções:

```bash
exec01 - Testar se um elemento é membro de uma lista
exec02 - Calcular o tamanho de uma lista
exec03 - Calcular a soma dos elementos de uma lista
exec04 - Calcular o produto dos elementos de uma lista
exec05 - Reversão de lista
exec06 - Testar se duas listas são iguais
exec07 - Concatenação de duas listas
exec08 - Interseção de duas listas
```

### Para executar cada exercício, informe sua label. Por exemplo: `exec01` ou `exec03`.

### Para sair do terminal do `ghci` digite `:q` ou `ctrl` + `d`.

# Exemplo de execução

```bash
ghci exercises.hs
```

- Você vai entrar no terminal do ghci:

```bash
GHCi, version 9.4.7: https://www.haskell.org/ghc/  :? for help

<no location info>: warning: [-Wmissed-extra-shared-lib]
    libgmp.so: cannot open shared object file: No such file or directory
    It's OK if you don't want to use symbols from it directly.
    (the package DLL is loaded by the system linker
     which manages dependencies by itself).
[1 of 2] Compiling Main             ( exercises.hs, interpreted )
Ok, one module loaded.
ghci>
```

- Digite `main` para ver o menu:

```bash
ghci> main
exec01 - Testar se um elemento é membro de uma lista
exec02 - Calcular o tamanho de uma lista
exec03 - Calcular a soma dos elementos de uma lista
exec04 - Calcular o produto dos elementos de uma lista
exec05 - Reversão de lista
exec06 - Testar se duas listas são iguais
exec07 - Concatenação de duas listas
exec08 - Interseção de duas listas
```

- Informe o exercício que deseja executar: Exemplo `exec02`:

```bash
ghci> exec02
Calcular o tamanho de uma lista
Informe uma lista de números separados por espaço
...
```

- Informe uma lista: Exemplo: `1 2 3 4 5 6`

```bash
ghci> exec02
Calcular o tamanho de uma lista
Informe uma lista de números separados por espaço
1 2 3 4 5 6
Tamanho: 6
ghci>
```


## Como Executar o Quicksort

#### De forma Interpretada com GHCI
- Inicie o interpretador GHCI
```bash
ghci
```

- Importe no `ghci` a biblioteca que gera números aleatórios, a biblioteca que realiza o benchmark, o programa a ser executado e execute o programa através da função principal, tudo isso através da sequência de comandos:

```bash
:m System.Random
:set -package criterion
:m Criterion.Main
:l quicksort.hs
main
```

#### De forma Compilada com GHC

```bash
ghc -package criterion quicksort.hs
./quicksort
```