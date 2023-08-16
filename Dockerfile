FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y libpq-dev gcc
RUN apt install libpq5
RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt
# COPY ./myproject /app
RUN mkdir /app
COPY . /app/

WORKDIR /app/LICT

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]