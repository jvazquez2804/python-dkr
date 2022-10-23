FROM alpine:3.10

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip

WORKDIR /ToleranteAFallas

COPY . /ToleranteAFallas

RUN pip3 --no-cache-dir install -r requerimientos.txt

CMD ["python3", "src/app.py"]