1 - generar los .war de cada proyecto y copiarlos en la carpeta target
2 - copiar todos los .jasper en la carpeta ./reportes/jasper/ correspondiente
3 - si se quiere sustituir la imagen de la empresa sustituir la imagen en la carpeta ./reportes/jasper/imagenes
4 - modificar el archivo .env a discresion segun necesidades
5 - ejecutar el compose
docker-compose up -d
6 - siquieres nombre personalizados de las imagenes
- docker build -t my-custom-web-image ./front
- docker build -t my-custom-reportes-image ./reportes
version: "3.9"

services:
  capitalsys-web:
    image: my-custom-web-image  # Utiliza la imagen etiquetada
    container_name: capitalsys-web-app
    env_file:
      - ./front/.env
    ports:
      - "8090:8090"
    networks:
      - spring

  capitalsys-reportes:
    image: my-custom-reportes-image  # Utiliza la imagen etiquetada
    container_name: capitalsys-reportes
    env_file:
      - ./reportes/.env
    ports:
      - "8080:8080"
    networks:
      - spring

networks:
  spring:
    name: spring
    external: true
