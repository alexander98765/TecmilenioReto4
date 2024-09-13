# Use the official Python 3.11 aplpine 
FROM python:3.11-alpine

# Create and set the working directory
WORKDIR /app

# Copy only the requirements file first to leverage Docker caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Specify the command to run on container start
CMD ["python", "/app/App.py"]