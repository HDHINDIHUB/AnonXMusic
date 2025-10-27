FROM python:3.11

WORKDIR /app

COPY . .

# Install system dependencies (needed for py-tgcrypto build)
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends ffmpeg build-essential python3-dev git && apt-get clean

RUN pip3 install -U pip
RUN pip3 install -U -r requirements.txt

CMD ["bash", "start"]
