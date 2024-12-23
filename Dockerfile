FROM python:3.13-slim

RUN pip install --no-cache-dir yt-dlp==2024.12.13 ytmusicapi==1.9.0

WORKDIR /app

EXPOSE 8080

COPY libra ./
ENTRYPOINT ["./libra", "server"]
