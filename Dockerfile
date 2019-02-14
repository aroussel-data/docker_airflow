# Use an official Python runtime as a parent image
FROM python:2.7-jessie

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN export SLUGIFY_USES_TEXT_UNIDECODE=yes && pip install --upgrade pip setuptools && pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8885

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["bash", "app.sh"]
