FROM python:3.8.12

WORKDIR /opt/

COPY . .

RUN pip install -r requirements.txt

ENV \
    VERSION=v1.0.0 \
    HOSTNAME=nginx \
    KUBERNETES_SERVICE_HOST=10.96.0.1

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
