FROM teemow/build
MAINTAINER Timo Derstappen, teemow@gmail.com

RUN sudo apt-get update && sudo apt-get install -y wget ca-certificates mercurial

# install go
RUN wget --no-verbose https://go.googlecode.com/files/go1.2.src.tar.gz
RUN sudo tar -v -C /usr/local -xzf go1.2.src.tar.gz
RUN cd /usr/local/go/src && sudo ./make.bash --no-clean 2>&1

ENV PATH $PATH:/usr/local/go/bin
ENTRYPOINT ["go"]
