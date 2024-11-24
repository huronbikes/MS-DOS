FROM ubuntu AS qemu-system
USER root

ARG FREEDOS_IMAGE=https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/1.3/official/FD13-FullUSB.zip

# Set up system prerequisites
RUN apt update
RUN apt -yq install qemu-utils qemu-system-x86
RUN apt -yq install unzip curl fdisk libguestfs-tools dos2unix

# grab freedos
RUN mkdir freedos
WORKDIR /freedos
RUN curl -o freedos.zip $FREEDOS_IMAGE
RUN unzip freedos.zip
RUN mv *.img freedos.img

ADD v4.0/ /src/ms_dos/4
ADD docker/freedos/ /freedos/scripts




