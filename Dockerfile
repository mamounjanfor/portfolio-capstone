FROM python:3.8

WORKDIR /app

ADD . /app

RUN rm -rf variable.tf

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

CMD ["python", "server.py"]
