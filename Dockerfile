FROM python:3.12-slim           //selects python base image

WORKDIR /app                   //The working directory inside the container, where our application is copied and executed

COPY app.py .                  //puts my program inside the image

ARG APP_VERSION=development    //allows GitHub Actions to pass the application version when building the Docker image
ENV APP_VERSION=$APP_VERSION   //stores that version as an environment variable

CMD ["python", "app.py"]      //tells the container what to run when it starts
