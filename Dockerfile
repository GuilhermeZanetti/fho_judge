# Etapa 1: Construção da imagem
FROM python:3.10 AS builder

WORKDIR /app

# Copiar os arquivos necessários para instalar dependências
COPY pyproject.toml poetry.lock /app/
COPY Makefile /app/

# Instalar Poetry
RUN pip install --no-cache-dir poetry

COPY ./apps /app/apps

# Etapa 2: Execução da aplicação
FROM python:3.10 AS runner

# Expor a porta usada pelo FastAPI/Uvicorn
EXPOSE 8000

# Definir o comando padrão de execução
CMD ["make", "run"]