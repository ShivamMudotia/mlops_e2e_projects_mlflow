FROM python:3.8-slim-buster

WORKDIR /app

RUN apt update -y && apt install awscli -y

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

CMD ["python3", "app.py"]