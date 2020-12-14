FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /django_app
WORKDIR /django_app
ADD requirements.txt /django_app/
RUN python -m pip install --upgrade pip
RUN  pip install -r requirements.txt
RUN apt-get update && apt-get install -y netcat
ADD . /django_app/