FROM python:3.9-slim
LABEL org.opencontainers.image.source=https://github.com/robenn11/aquaman
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

CMD ["python", "-u", "app.py"]