FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends wine64 && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Caption2Ass ./

ENTRYPOINT ["wine64-stable", "/app/bin/Caption2AssC_x64.exe"]
