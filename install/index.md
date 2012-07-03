---
layout: default
---

# Install

## Mac OS X

    curl -O http://packages.groonga.org/macosx/gcs/gcs-1.0.0.tar.gz
    tar xvzf gcs-1.0.0.tar.gz
    cd gcs-1.0.0
    ./gcs

## Debian

    sudo apt-get install groonga npm
    sudo npm install -g gcs
    gcs

## CentOS

    sudo rpm -ivh http://nodejs.tchol.org/repocfg/el/nodejs-stable-release.noarch.rpm
    sudo rpm -ivh http://packages.groonga.org/centos/groonga-release-1.1.0-0.noarch.rpm
    sudo yum makecache
    sudo yum install -y groonga-devel nodejs-compat-symlinks npm
    sudo npm install -g gcs
    gcs
