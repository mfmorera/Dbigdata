# Dbigdata

Este proyecto utiliza Python, Jupyter Notebook y Docker para ejecutar un entorno de análisis de datos y procesamiento con los archivos proporcionados.
# Copiar archivos del proyecto
COPY Clase2BigData.ipynb .
COPY Darknet1.zip .
COPY README.md .

# Descomprimir el archivo zip
RUN unzip Darknet1.zip -d /app/darknet

# Exponer el puerto del Jupyter Notebook
EXPOSE 8888

# Comando para lanzar Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

## Contenido del Proyecto

- Clase2BigData.ipynb: Notebook principal del proyecto.
- Darknet1.zip: Contiene archivos utilizados por el notebook.
- Dockerfile: Define el entorno necesario para ejecutar el proyecto.

## Requisitos

- [Docker] instalado 

## Ejecutar contenedor

1. Clona este repositorio:
bash
git clone https://github.com/mfmorera/Dbigdata.git
cd Dbigdata



