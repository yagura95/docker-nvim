FROM ubuntu 

RUN apt update && apt upgrade -y
RUN apt install -y curl git
WORKDIR /app

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
RUN rm -rf /opt/nvim
RUN tar -C /opt -xzf nvim-linux-x86_64.tar.gz

USER ubuntu
RUN mkdir -p /home/ubuntu/.local/share/nvim/site/pack/packer/start/
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
RUN mkdir -p /home/ubuntu/.config/nvim
COPY ./conf/nvim/ /home/ubuntu/.config/nvim

USER root
RUN chown ubuntu:ubuntu -R /home/ubuntu 



