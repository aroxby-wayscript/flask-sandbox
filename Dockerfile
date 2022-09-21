FROM python:3-slim

WORKDIR /src
ADD . .

RUN pip install -r requirements.txt

EXPOSE 5000/tcp
CMD flask --app app --debug run --host=0.0.0.0
