#!/bin/bash

# Passo 1: Atualizar pacotes do sistema
echo "Atualizando pacotes do sistema..."
sudo apt update -y
sudo apt upgrade -y

# Passo 2: Instalar dependências necessárias para compilação
echo "Instalando dependências necessárias..."
sudo apt install -y \
  build-essential \
  cmake \
  libboost-all-dev \
  liblua5.1-dev \
  libssl-dev \
  libsqlite3-dev \
  libmysqlclient-dev \
  libxml2-dev \
  zlib1g-dev \
  git

# Passo 3: Clonar o repositório do Solebra (se ainda não feito)
echo "Clonando o repositório do Solebra..."
REPO_DIR="/home/ash/solebra"
if [ ! -d "$REPO_DIR" ]; then
  git clone https://github.com/alencarFiles/solebra.git /home/ash/solebra
else
  echo "Repositório já foi clonado em $REPO_DIR"
fi

# Passo 4: Acessar o diretório do projeto
echo "Entrando no diretório do projeto..."
cd /home/ash/solebra/Source || { echo "Falha ao acessar o diretório do projeto"; exit 1; }

# Passo 5: Garantir que o script configure tenha permissão de execução
echo "Garantindo permissão de execução para o script configure..."
chmod +x configure

# Passo 6: Executar o script configure
echo "Executando o script configure..."
./configure || { echo "Erro ao executar o script configure"; exit 1; }

# Passo 7: Rodar o build
echo "Compilando o projeto com o make..."
make -j$(nproc) || { echo "Erro durante a compilação com make"; exit 1; }

# Passo 8: Rodar o build.sh para gerar os arquivos binários finais
echo "Rodando o script build.sh..."
./build.sh || { echo "Erro ao executar o script build.sh"; exit 1; }

# Passo 9: Verificar se o processo de compilação foi concluído com sucesso
echo "Verificando se a compilação foi bem-sucedida..."
if [ -d "/home/ash/solebra/Source/bin" ]; then
    echo "Arquivos compilados encontrados em /home/ash/solebra/Source/bin"
else
    echo "Falha na compilação. Verifique o processo e consulte os logs."
    exit 1
fi

# Passo 10: Finalizar
echo "Compilação concluída!"
