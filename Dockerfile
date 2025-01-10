FROM node:16

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie os arquivos necessários para o container
COPY app/package.json /app/
COPY app/index.js /app/

# Instale as dependências do projeto
RUN npm install

# Exponha a porta que a aplicação utilizará
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "index.js"]