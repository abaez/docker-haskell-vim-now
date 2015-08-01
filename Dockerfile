FROM haskell

RUN apt-get update &&  apt-get install -y git vim curl build-essential \
   exuberant-ctags libcurl4-openssl-dev
RUN apt-get clean

RUN curl https://raw.githubusercontent.com/begriffs/haskell-vim-now/master/install.sh | bash

RUN mkdir /app
WORKDIR /app

CMD ["/bin/bash"]
