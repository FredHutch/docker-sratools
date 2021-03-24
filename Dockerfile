FROM ncbi/sra-tools:2.11.0
RUN apk update && \
    apk upgrade && \
    apk add bash