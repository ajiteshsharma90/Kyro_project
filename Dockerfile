FROM python:3.9
#FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7 

WORKDIR /cosmosdb-python-fastapi

RUN pip install fastapi
RUN pip install fastapi uvicorn
Run pip install python-dotenv
Run pip install aiohttp
Run pip install azure-cosmos

COPY . .

EXPOSE 8000

CMD ["uvicorn", "--reload", "main:app","--host","0.0.0.0","--port", "80"]
