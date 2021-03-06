FROM orchardup/python:2.7
ADD . /code
WORKDIR /code
RUN apt-get update
RUN apt-get install -y libpq-dev python-dev
RUN apt-get install -y git-core
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
