FROM puppet/puppet-agent:latest

RUN apt-get update && apt-get install locales
RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN /usr/sbin/locale-gen
RUN gem install generate-puppetfile

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8


WORKDIR /app
ENTRYPOINT []
CMD [ "bash" ]
