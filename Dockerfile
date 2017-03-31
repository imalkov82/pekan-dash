FROM python:2.7-slim
MAINTAINER Igor Malkov <igor.malkov82@gmail.com>

ENV INSTALL_PATH /pekan-dash
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD gunicorn -b 0.0.0.0:8000 --access-logfile - "pekan.app:create_app()"
