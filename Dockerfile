#Descargar la imagen
From ubuntu:22.04

#Actualizar la lista de actualizaciones
Run apt-get update --fix-missing

#Actualizar la imagen
RUN apt-get upgrade -y

#instalar herramientas
RUN apt-get install python3 -y

#copiar la carpeta
COPY ./webapp /home/webapp

#Establecer directorio de trabajo
WORKDIR /home/webapp

#Instalar pip
RUN apt-get install python3-pip -y

#instalar librerias
RUN pip install -r requirements.txt

#abrir puerto 8080
EXPOSE 8080

#Ejecutar
CMD ["python3","main.py"]