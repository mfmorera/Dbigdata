# Imagen base oficial de Python
FROM python:3.10-slim

# Crear y establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios al contenedor
COPY Darknet1.csv ./
COPY Clase2BigData.ipynb ./

# Instalar dependencias necesarias
RUN pip install --no-cache-dir pandas jupyter numpy matplotlib seaborn

# Exponer el puerto 8888 para acceder a Jupyter Notebook
EXPOSE 8888

# Comando para iniciar Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
