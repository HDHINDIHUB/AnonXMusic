FROM python:latest

WORKDIR /app

# Copy all files (including requirements.txt) into the container
COPY . .

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends ffmpeg && apt-get clean

RUN pip3 install -U pip
RUN pip3 install -U -r requirements.txt

CMD ["bash", "start"]
