FROM python:3.8

WORKDIR /opt/

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
