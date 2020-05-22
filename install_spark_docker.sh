#!/bin/sh

# Rodar o script dentro de uma pasta!!

# pega o nome da pasta
localdir=$(pwd)

# Cria a imagem
docker build -t "spark:Dockerfile"

# roda o container e instala a dependencia graphframe
# -v vai sincronizar a pasta 'work' dentro do container com a pasta local
docker run --name spark -v $localdir:/home/jovya
n/work -p8888:8888 -d spark:Dockerfile

# mostra os logs que contem o token de acesso
docker logs spark
