FROM node:4.2

RUN npm install -g phantomjs manet

EXPOSE  8891

ENTRYPOINT ["manet"]
CMD ["--host=0.0.0.0"]
