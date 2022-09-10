FROM python:3.7.3-stretch

WORKDIR  /usr/src/app

COPY . /usr/src/app

COPY requirements.txt .

RUN pip install --upgrade pip &&\
    pip install --upgrade setuptools &&\
    pip install -r requirements.txt

#hadolint ignore=DL3013

Expose 80

CMD ["python", "app.py"]
