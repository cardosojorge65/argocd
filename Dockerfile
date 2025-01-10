FROM node:16

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos necessários para o container
COPY app/package.json /app/
COPY app/index.js /app/

# Instala as dependências do projeto
RUN npm install

# Expõe a porta 3000
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "index.js"]
