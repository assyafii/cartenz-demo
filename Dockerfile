# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

RUN sysctl -w net.ipv6.conf.all.disable_ipv6=1
RUN sysctl -w net.ipv6.conf.default.disable_ipv6=1
RUN pip3 install Flask==1.1.1

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
