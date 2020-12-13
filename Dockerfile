FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /my_app_dir
WORKDIR /my_app_dir
ADD requirements.txt /my_app_dir/
RUN python -m pip install --upgrade pip
RUN  pip install -r requirements.txt
RUN apt-get update && apt-get install -y netcat
ADD . /my_app_dir/