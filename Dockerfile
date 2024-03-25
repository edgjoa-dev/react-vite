# Usa una imagen de Node.js como base
FROM node:20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu aplicación al contenedor
COPY . .

# Instala las dependencias utilizando Yarn
RUN yarn install

# Construye la aplicación
RUN yarn build

# Construye la aplicación
RUN yarn lint

# Expone el puerto en el que se ejecuta la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["yarn", "start"]
