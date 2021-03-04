FROM archlinux:latest
WORKDIR /app
EXPOSE 8080

COPY requirements.txt requirements.txt

RUN pacman -Sy
RUN pacman -S sqlite
RUN pacman -S python

COPY . .
RUN pip3 install -r requirements.txt


RUN python3 main.py

