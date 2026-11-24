FROM python:3.12-slim

WORKDIR /app

COPY app.py .

ARG APP_VERSION=development
ENV APP_VERSION=$APP_VERSION

CMD ["python", "app.py"]
