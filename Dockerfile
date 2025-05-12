FROM python:3.10-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY Clase2BigData.ipynb .
COPY Darknet1.zip .
COPY README.md .

# Instalar paquetes necesarios
RUN apt-get update && apt-get install -y unzip && \
    pip install --no-cache-dir notebook pandas

# Descomprimir el archivo zip
RUN unzip Darknet1.zip -d /app/darknet

# Exponer el puerto del Jupyter Notebook
EXPOSE 8888

# Comando para lanzar Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
