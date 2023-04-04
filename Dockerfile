FROM python:3.11

RUN poetry build
CMD poetry run start
