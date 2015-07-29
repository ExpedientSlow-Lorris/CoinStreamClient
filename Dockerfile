FROM centos:centos6

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm tar bzip2
RUN     yum install -y fontconfig freetype freetype-devel fontconfig-devel libstdc++ wget
RUN     wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
RUN     mkdir -p /opt/phantomjs
RUN     tar -xjvf ./phantomjs-1.9.8-linux-x86_64.tar.bz2 --strip-components 1 /opt/phantomjs/
RUN     ln -s /opt/phantomjs/bin/phantomjs /usr/bin/phantomjs

# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src; npm install;

EXPOSE 8080

# cmd ["npm", "test", "/src"]
cmd ["node", "/src/index.js"]
