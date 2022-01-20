FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN apt update && apt upgrade -y
RUN cd /
RUN apt install git -y
RUN mkdir /app

COPY . .

COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
