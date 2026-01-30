# Base image 
From python:3.11-slim 

# set working directory 
WORKDIR /app

# Copy dependency file first (layer optimization)
COPY app/requirements.txt .

# Install dependecies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code 
COPY app/ .

# Expose application port 
EXPOSE 5000

# Run application 
CMD ["python", "app.py"]
