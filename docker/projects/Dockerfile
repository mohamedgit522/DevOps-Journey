# Dockerfile.assignment

# Use the official lightweight Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency file into the image
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Flask app into the image
COPY app.py .

# Document that the container will listen on port 5001
EXPOSE 5001

# Run the Flask app automatically when container starts
CMD ["python", "app.py"]