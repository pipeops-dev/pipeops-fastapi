# Set the base image to Python 3.9
FROM python:3.11.0

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose port 8000 for the Django application
EXPOSE 5000

# Start the Django development server
CMD ["python", "main.py", "0.0.0.0:8000"]