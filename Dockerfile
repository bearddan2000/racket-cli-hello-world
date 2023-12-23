FROM fedora:latest

WORKDIR /workspace

RUN dnf update -y

RUN dnf install -y racket

WORKDIR /code

COPY bin .

CMD "racket hello.rkt"