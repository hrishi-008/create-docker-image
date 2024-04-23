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
