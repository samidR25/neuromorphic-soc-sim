FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get update && apt-get install -y --no-install-recommends \
    iverilog verilator gtkwave yosys build-essential python3 python3-pip git \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir cocotb cocotb-test numpy

WORKDIR /workspace
CMD ["/bin/bash"]
