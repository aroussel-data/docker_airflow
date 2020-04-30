# Use an official Python runtime as a parent image
FROM ubuntu

# Set the working directory to /app
WORKDIR app/

# Copy the current directory contents into the container at /app
COPY . .

RUN apt-get update -y
RUN apt-get install -y python3.6 python3-pip
RUN pip3 install -r requirements.txt
RUN mkdir airflow

# Make port 8885 available to the world outside this container
EXPOSE 8885

# Define environment variable
ENV SLUGIFY_USES_TEXT_UNIDECODE=yes
ENV AIRFLOW_HOME=/app/airflow 
# Run app.py when the container launches
CMD ["bash", "app.sh"]
