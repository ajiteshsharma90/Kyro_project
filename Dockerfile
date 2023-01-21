FROM python:3.9
#FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7 
WORKDIR /cosmosdb-python-fastapi
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["uvicorn", "--reload", "main:app","--host","0.0.0.0","--port", "80"]
