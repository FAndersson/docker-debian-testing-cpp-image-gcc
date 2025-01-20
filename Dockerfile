# Docker image for C++ development using GCC, based on base C++ image for
# Debian testing.

FROM fredrikandersson/debian-testing-cpp-image-base:2024-07-01

RUN apt-get update --quiet --yes && apt-get install --quiet --yes g++ ccache

# Create default user.
RUN useradd --create-home --shell /bin/bash fredrik
USER fredrik
WORKDIR /home/fredrik
