# Use the official Jupyter Notebook image as a base
FROM jupyter/scipy-notebook:latest

# Copy the requirements.txt file into the image
COPY requirements.txt /tmp/

# Install additional packages specified in requirements.txt with increased timeout
RUN pip install --default-timeout=1000 -r /tmp/requirements.txt

# Set the working directory
WORKDIR /home/jovyan/work

# Expose the Jupyter Notebook port
EXPOSE 8888
