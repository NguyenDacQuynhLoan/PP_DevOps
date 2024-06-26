# Dockerfile

# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV PYTHONUNBUFFERED 1

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


## Use the official Python image from the Docker Hub
#FROM python:3.12
#
## Set environment variables
#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1
#
## Set the working directory
#WORKDIR /app
#
## Copy the requirements.txt file into the container
#COPY requirements.txt /app/
#
## Install the dependencies
#RUN pip install --upgrade pip
#RUN pip install -r requirements.txt
#
## Copy the entire project into the container
#COPY . /app/
#
## Expose port 8000 for the Django app
#EXPOSE 8000
#
## Command to run the Django app
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
