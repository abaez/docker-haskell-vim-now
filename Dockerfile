FROM haskell

# Install predepends
RUN apt-get update &&  apt-get install -y git vim curl build-essential \
   exuberant-ctags libcurl4-openssl-dev mercurial
RUN apt-get clean

# install vim-now
RUN curl https://raw.githubusercontent.com/begriffs/haskell-vim-now/master/install.sh | bash

# install custom vim settings
ADD ./add/vimrc.local /root/.vimrc.local

# remove cabal bloat
RUN rm /root/.cabal -rf

# app directory
RUN mkdir /project
WORKDIR /project
