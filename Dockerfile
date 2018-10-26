FROM jenkinsci/blueocean
USER root
RUN apk add ansible --no-cache
USER jenkins
