FROM python:3-alpine
WORKDIR /usr/src/app
EXPOSE 8000
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY hello-world.py .
CMD ["python3", "./hello-world.py"]
