#!/bin/sh

# Rodar o script dentro de uma pasta

# pega o nome da pasta
localdir=$(pwd)

# roda o container e instala a dependencia graphframe
# -v vai sincronizar a pasta 'work' dentro do container com a pasta local
docker run --name spark -v $localdir:/home/jovyan/work -p8888:8888 -d jupyter/pyspark-notebook && docker exec -it spark pip install graphframes

# mostra os logs que contem o token de acesso
docker logs spark
