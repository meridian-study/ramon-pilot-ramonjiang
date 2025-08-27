FROM mcr.microsoft.com/devcontainers/base:ubuntu

# System deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip python3-venv curl git ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /workspaces/study
COPY requirements.txt /workspaces/study/requirements.txt

# Create a virtual environment to avoid PEP 668 externally-managed errors
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:${PATH}"

# Install Python dependencies inside the venv
RUN pip install --no-cache-dir --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

# Pre-create a system-wide kernelspec so users don’t have to
RUN python -m ipykernel install --name=study --display-name "Python (study)" --prefix=/usr/local

# Copy repo content at build (Codespaces will bind mount; this keeps image valid even if cloned elsewhere)
COPY . /workspaces/study


