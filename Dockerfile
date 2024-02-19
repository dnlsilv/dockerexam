# Utiliza la imagen oficial de Node.js 14 como base
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /var/app

# Copia los archivos del proyecto al contenedor, excluyendo lo definido en .dockerignore
COPY . .

# Instala las dependencias del proyecto (asegúrate de que tu proyecto tiene un 'package.json')
RUN npm install

# Expone el puerto 8080 para que el contenedor sea accesible
EXPOSE 8080

# Define el comando para arrancar la aplicación
CMD ["npm", "start"]
