FROM node:4.2

RUN apt-get update && \
    apt-get install -y xvfb iceweasel

RUN npm install -g slimerjs phantomjs manet

COPY bin/start_manet.sh /usr/local/bin/

EXPOSE 8891

ENTRYPOINT ["start_manet.sh"]
CMD ["--engine=slimerjs"]
