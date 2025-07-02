# Usa uma imagem base oficial do Python
FROM python:3.10-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o arquivo de dependências e as instala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código da aplicação
COPY . .

# O comando para executar a aplicação será especificado no docker-compose.yml