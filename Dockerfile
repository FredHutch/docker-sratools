FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y wget
RUN mkdir /usr/local/sratools && \
    cd /usr/local/sratools && \
    wget --quiet https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.11.0/sratoolkit.2.11.0-ubuntu64.tar.gz && \
    tar xzvf sratoolkit.2.11.0-ubuntu64.tar.gz && \
    ln -s /usr/local/sratools/sratoolkit.2.11.0-ubuntu64/bin/* /usr/local/bin/ && \
    rm sratoolkit.2.11.0-ubuntu64.tar.gz