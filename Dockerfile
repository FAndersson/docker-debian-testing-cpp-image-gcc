# Docker image for C++ development using GCC, based on base C++ image for Debian testing.

FROM fredrikandersson/debian-testing-cpp-image-base:2022-08-01

RUN apt-get update --quiet --yes && apt-get install --quiet --yes g++ ccache
