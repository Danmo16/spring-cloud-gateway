# Usar la imagen oficial de OpenJDK como base
FROM openjdk:11-jre-slim

# Añadir un volumen para el almacenamiento temporal de archivos
VOLUME /tmp

# Añadir el archivo JAR de la aplicación al contenedor
COPY target/api-gateway-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto que la aplicación usará
EXPOSE 8080

# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app.jar"]
