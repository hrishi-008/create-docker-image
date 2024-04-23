# Building Docker Images with Dockerfile: A Step-by-Step Guide

SCROLL TO BOTTOM TO SEE MY FILE TREE AND CODE !

In today's rapidly evolving software development landscape, Docker has emerged as a powerful tool for containerization, enabling developers to package their applications and dependencies into lightweight, portable containers. One of the key components of Docker is the Dockerfile, a text file that contains instructions for building Docker images. In this blog post, we'll walk through the process of creating a Docker image using a Dockerfile, along with necessary code snippets and commands.

## What is a Dockerfile?

A Dockerfile is a simple text file that contains a set of instructions for building a Docker image. These instructions define the environment inside the container, including the base image to use, the working directory, copying files into the container, installing dependencies, exposing ports, and specifying the command to run the application.

## Step-by-Step Guide to Building a Docker Image

### 1. Create a Dockerfile

```Dockerfile
# Use a base image
FROM base_image:tag

# Set the working directory inside the container
WORKDIR /app

# Copy files from host to container
COPY . .

# Install dependencies if required
RUN apt-get update && apt-get install -y dependency

# Expose required ports
EXPOSE port_number

# Define the command to run your application
CMD ["command_to_run"]
```

### 2. Build the Docker image

Use the following command to build the Docker image based on the Dockerfile:

```bash
docker build -t image_name:tag .
```

Replace `image_name` with the desired name for your Docker image and `tag` with a version or identifier. The `.` at the end specifies the build context, indicating the current directory where the Dockerfile is located.

### 3. Run the Docker container

Once the Docker image is built, you can run a container based on that image using the following command:

```bash
docker run -d -p host_port:container_port image_name:tag
```

Replace `host_port` with the port on your host machine that you want to map to the container's port (`container_port`). The `-d` flag runs the container in detached mode, and the `-p` flag specifies port mapping.

## Conclusion

In this blog post, we've explored the process of creating Docker images using a Dockerfile. Dockerfiles provide a simple and efficient way to define the environment for your applications, making it easier to build, deploy, and manage containerized applications across different environments. By following the step-by-step guide outlined above, you can leverage Dockerfiles to streamline your Docker image creation process and enhance your development workflow. Happy containerizing!

## My SCREENSHOTS AND CODE

**DOCKERFILE:**
```Dockerfile
# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY . /app/

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir --upgrade pip
RUN pip install google-ai-generativelanguage
RUN pip install streamlit
RUN pip install pillow

# Expose port 8509 for Streamlit
EXPOSE 8509

# Command to run your Streamlit app when the container starts
CMD ["streamlit", "run", "app.py", "--server.port", "8509"]
```
IMAGES:

![image](https://github.com/hrishi-008/create-docker-image/assets/97169623/903bade5-168d-4d04-a222-1da2f1637da8)

![image](https://github.com/hrishi-008/create-docker-image/assets/97169623/cd311456-3cf1-4ce6-809e-a1bd5ba37577)

PUSHING TO DOCKER HUB

![image](https://github.com/hrishi-008/create-docker-image/assets/97169623/29616543-4a30-4061-bba4-079df95f80c9)

