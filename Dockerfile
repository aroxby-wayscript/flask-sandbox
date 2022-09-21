FROM python:3-slim

WORKDIR /src
ADD . .

RUN pip install -r requirements.txt

EXPOSE 5000/tcp
CMD FLASK_ENV=development FLASK_APP=app flask run --host=0.0.0.0
