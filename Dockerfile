FROM ubuntu:24.04

# Install gVim and clean up to keep image small
RUN apt-get update && \
    apt-get install -y vim-gtk3 && \
    rm -rf /var/lib/apt/lists/*

# Optional: Set default command to bash for shell access
CMD ["/bin/bash"]
