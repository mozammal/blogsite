FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /django-app
WORKDIR /django-app
COPY . /django-app