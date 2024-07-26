# Use an official Python runtime as a parent image
FROM python:3.9-slim

ADD . .

# Set the working directory in the container
WORKDIR bikeshare_model_api

# Copy the requirements file into the container at /app
#COPY requirements.txt /app/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the working directory contents into the container at /app
#COPY . /app

# Make port 5000 available to the world outside this container
EXPOSE 8080

# Define environment variable
#ENV FLASK_APP=app.py

# Run the application
CMD ["python3", "app/main.py"]
