# Base image: lightweight Python 3.14 (updated from 3.12 for latest features/security)
FROM python:3.14-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app
COPY . .

# Expose port 5000 (Flask default)
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]