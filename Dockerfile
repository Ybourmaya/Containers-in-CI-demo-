# Selects the Python base image
FROM python:3.12-slim

# Sets the working directory inside the container
WORKDIR /app

# Copies my program into the image
COPY app.py .

# Allows GitHub Actions to pass the application version
ARG APP_VERSION=development

# Stores that version as an environment variable
ENV APP_VERSION=$APP_VERSION

# Tells the container what to run when it starts
CMD ["python", "app.py"]
