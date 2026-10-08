# Busca un ambiente de ubuntu para crear el contenedor seguido de la versión 
from ubuntu:latest 

ARG DEBIAN_FRONTEND=noninteractive

# Se instala python
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace 

RUN git clone https://github.com/estebanarreguin004-ux/SD2026-2A.git

CMD ["sleep", "infinity"]
# CMD ["/bin/bash"]
# CMD ["python3", "your_script.py"]
