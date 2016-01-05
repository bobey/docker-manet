FROM node:4.2

RUN apt-get update && \
    apt-get install -y xvfb iceweasel

RUN npm install -g slimerjs phantomjs manet@0.4.8

COPY bin/startup.sh /usr/local/bin/startup.sh

EXPOSE 8891

ENTRYPOINT ["startup.sh", "--host=0.0.0.0 "]
CMD ["--engine=slimerjs"]
