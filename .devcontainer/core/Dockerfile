# BS0030 core laboratory: Python is pinned; C/C++ compilers come from Debian.
FROM python:3.14.7-bookworm

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential clang gdb lldb cmake pkg-config sqlite3 \
        git openssh-client curl ca-certificates sudo \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd --gid 1000 vscode \
    && useradd --uid 1000 --gid 1000 --create-home --shell /bin/bash vscode \
    && echo 'vscode ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/vscode \
    && chmod 0440 /etc/sudoers.d/vscode

ENV PYTHONUNBUFFERED=1
