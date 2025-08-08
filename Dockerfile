# Use official Python base image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Expose the port
EXPOSE 5001

# Run the app
CMD ["python", "app.py"]
