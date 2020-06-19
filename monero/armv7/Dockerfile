FROM arm32v7/debian:stretch
RUN mkdir /datadir
ADD . /usr/bin
ENTRYPOINT [ "monerod", "--data-dir=/datadir" ]