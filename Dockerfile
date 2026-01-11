# Use an official Python 3.9 image
FROM python:3.8-buster

# Set the working directory
WORKDIR /app

# Copy requirements if you have them, else install directly

# Install dependencies directly
RUN pip install --upgrade pip && \
    pip install scikit-learn==0.23.1 numpy==1.17.3 Cython==0.29.21 flask

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on (default Flask port)
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
