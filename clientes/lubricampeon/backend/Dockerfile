FROM openjdk:17

# Instala las dependencias requeridas
#RUN apk update && \
#    apk install -y libfreetype6 && \
#    apk clean
#
# Crear la carpeta para almacenar los archivos .jasper
RUN mkdir -p /app/jasper

# Cambiar los permisos de la carpeta
RUN chmod -R 777 /app/jasper

# Copia los reportes en el contenedor
COPY ./reportes /app/jasper

# Copia el archivo JAR desde el directorio local al directorio de trabajo del contenedor
COPY ./erp-0.0.1-SNAPSHOT.jar /app/erp.jar

# Establece el directorio de trabajo como el directorio donde se encuentra el archivo JAR
WORKDIR /app

EXPOSE 8080

# Comando de inicio para ejecutar el archivo JAR
CMD ["java", "-jar", "erp.jar"]