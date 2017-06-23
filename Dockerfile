FROM vpclub/centos7-s2i-nodejs:latest

# This image provides a Node.JS environment you can use to run your Node.JS
# applications.

MAINTAINER John Deng <john.deng@outlook.com>

EXPOSE 8080

# Download and install a binary from nodejs.org
# Add the gpg keys listed at https://github.com/nodejs/node

RUN npm config set registry https://registry.npm.taobao.org

RUN npm install -g gitbook-cli
RUN npm install -g gitbook

# Drop the root user and make the content of /opt/app-root owned by user 1001
RUN chown -R 1001:0 /opt/app-root
USER 1001


