FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy and install dependencies first (better caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the port (change if you want to run on a different port)
EXPOSE 8888

# Run the application with unbuffered output (recommended for Docker)
CMD ["python", "-u", "sxm.py"]
