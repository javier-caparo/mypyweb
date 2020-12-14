# Use an official Python runtime as a parent image
FROM python:3.6-slim
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org Flask
ENV NAME World
CMD ["python", "app.py"]