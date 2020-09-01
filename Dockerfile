FROM python:3.5

WORKDIR /code

ADD requirements.txt .
ADD requirements requirements

RUN pip install --upgrade pip setuptools \
    && pip install -r requirements.txt

ADD . .
