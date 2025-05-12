FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY etlpytthon.py .
COPY http://cicresearch.ca/CICDataset/CICDarknet2020/Dataset/Darknet.CSV.

CMD ["python", "etlpytthon.py"]
