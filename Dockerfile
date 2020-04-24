FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install pytest==4.0.2
RUN pip install PyJWT
RUN pip install Flask
RUN pip install gunicorn
RUN pip install pytest


ENTRYPOINT ["gunicorn", "-b", ":8080","main:APP"]