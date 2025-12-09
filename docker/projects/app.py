# app.py.assignment

# Import Flask for web application
from flask import Flask

# Import Redis client library
import redis

# Create a Flask application instance
app = Flask(__name__)

# Create Redis connection
# "redis" is the hostname created automatically by Docker Compose
r = redis.Redis(host="redis", port=6379, decode_responses=True)

# Default route
@app.route("/")
def home():
    return "Welcome to my Flask + Redis app!"
   
# Route to track page visits
@app.route("/count")
def count(): 
    # Read "visits" key from Redis
    current = r.get("visits")

    #If no count yet, start at 0
    if current is None:
        current = 0
    else:
        current = int(current) #Redis stores strings, convert to int

    # Increment the count
    new_count = current + 1        
       
    # Save new count back to Redis
    r.set("visits", new_count)

    # Return response
    return f"This page has been visited {new_count} times."

# Start Flask web server accessible over network
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)
