FROM python:3.11

RUN pip install poetry

RUN mkdir -p /home/poetry_example_project
COPY *.toml /home/poetry_example_project/
COPY scripts /home/poetry_example_project/

RUN poetry build
CMD poetry run start
