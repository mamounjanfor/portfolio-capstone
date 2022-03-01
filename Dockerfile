FROM alpine:latest

RUN apk add --no-cache python3-dev \
    && apk add py3-pip \
    && pip3 install --upgrade pip

# We copy just the requirements.txt first to leverage Docker cache

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["server.py"]
