# Flask + Redis Multi-Container Project
This project demonstrates a simple Python Flask web application using Redis as a key-value store. The application is containerized using Docker, and Docker Compose is used to manage the multi-container setup.

## Project Structure

docker/projects/
├── app.py # Flask application
├── Dockerfile # Dockerfile for the Flask app
├── requirements.txt # Python dependencies
└── docker-compose.yml # Docker Compose file for multi-container setup

## Features

- **Flask Web Application**
  - `/` - Displays a welcome message.
  - `/count` - Tracks and displays the number of visits using Redis.

- **Redis Database**
  - Stores the visit count as a key-value pair.
  
- **Dockerized Setup**
  - Flask app and Redis run in separate containers.
  - Managed using Docker Compose.

## Prerequisites

- Docker
- Docker Compose

## Running the Application

1. Clone the repository:
```bash
git clone <your-repo-url>
cd devops-journey/docker/projects

Build and start the containers:

docker compose up --build

Access the application:

Welcome page: http://localhost:5001/

Visit count: http://localhost:5001/count

Notes

The Flask app connects to the Redis container using the hostname redis defined in docker-compose.yml.

The visit count is persisted in a Docker volume (redis-data) so it survives container restarts.

License

This project is for learning purposes.