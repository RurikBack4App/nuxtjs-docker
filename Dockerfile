# Use a imagem base do Node.js
FROM node:20

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar package.json e package-lock.json para o diretório de trabalh
COPY . /app
# Instalar as dependências
RUN npm install

# Copiar o restante do código para o diretório de trabalho

# Construir o projeto Nuxt.js
RUN npm run build

# Expor a porta que o Nuxt.js usará
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
