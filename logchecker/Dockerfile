FROM php:7.3-cli
RUN apt-get update && apt-get install -y locales python3 python3-pip && pip3 install chardet eac-logchecker xld-logchecker
RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
# TODO fetch binary from GitHub when https://github.com/OPSnet/Logchecker/issues/5 is fixed
COPY logchecker /bin/
WORKDIR /logchecker/
ENTRYPOINT [ "/bin/logchecker" ]
