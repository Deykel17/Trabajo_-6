FROM python:3.12

WORKDIR /code

COPY requirements.txt /code/requirements.txt
RUN python -m pip install --upgrade pip setuptools
RUN pip install -r requirements.txt

COPY . /code

EXPOSE 8000
CMD ["uvicorn", "main:app", "--port", "8000", "--host", "0.0.0.0"]
