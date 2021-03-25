FROM ncbi/sra-tools:2.11.0
RUN apk update && \
    apk upgrade && \
    apk add bash
RUN mkdir -p /etc/ncbi/config/ && \
    cp /root/.ncbi/user-settings.mkfg /etc/ncbi/config/