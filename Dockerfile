FROM python:3.11-slim

WORKDIR /app

# Copy requirements files
COPY requirements/ requirements/

# Install test and development dependencies
RUN pip install --no-cache-dir -r requirements/python-dev

# Copy the entire project
COPY . .

# Run tests
CMD ["python", "tests/run.py"]