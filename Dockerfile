# Dockerfile
FROM python:3.10-slim

RUN apt-get update && apt-get install -y curl && apt-get clean

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]
