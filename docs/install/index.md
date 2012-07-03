---
title: Install
layout: default
---

# Install

Groonga CloudSearch can be installed easily on the following platforms:

* [Mac OS X](#mac-os-x)
* [CentOS 5/6](#centos)
* [Ubuntu 12.04 LTS (Precise Pangolin)](#ubuntu)

How to install on [other platforms](#others) is described at the last.

## Mac OS X {#mac-os-x}

All-in-one package is provided for Mac OS X. You just download and
extract it. You don't need to install Xcode and so on.

    curl -O http://packages.groonga.org/macosx/gcs/gcs-1.0.0.tar.gz
    tar xvzf gcs-1.0.0.tar.gz

You have `gcs` command that starts Groonga CloudSearch service in
`gcs-1.0.0/` directory.

To confirm that Groonga ClouldSearch is installed successfully, type
the following command:

    % gcs-1.0.0/gcs --version
    1.0.0

If you got 1.0.0, Groonga CloudSearch is installed successfully! Yey!

## CentOS 5/6 {#centos}

There are yum repositories that provide softwares required by Groonga
CloudSearch. Here are instructions to install required softwares:

Add yum repositories for Node.js and [groonga](../faq/#search-engine):

    sudo rpm -ivh http://nodejs.tchol.org/repocfg/el/nodejs-stable-release.noarch.rpm
    sudo rpm -ivh http://packages.groonga.org/centos/groonga-release-1.1.0-0.noarch.rpm
    sudo yum makecache

Install required softwares:

    sudo yum install -y groonga-devel nodejs-compat-symlinks npm

Install Groonga CloudSearch:

    sudo npm install -y -g gcs

You have `gcs` command that starts Groonga CloudSearch service in
`/usr/bin/` directory.

To confirm that Groonga ClouldSearch is installed successfully, type
the following command:

    % gcs --version
    1.0.0

If you got 1.0.0, Groonga CloudSearch is installed successfully! Yey!

## Ubuntu 12.04 LTS (Precise Pangolin) {#ubuntu}

There is apt repositories that provide softwares required by Groonga
CloudSearch. Here are instructions to install required softwares:

To add apt repository for [groonga](../faq/#search-engine), create
`/etc/apt/sources.list.d/groonga.list` file with the following
content:

    deb http://packages.groonga.org/ubuntu/ precise universe
    deb-src http://packages.groonga.org/ubuntu/ precise universe

Install GPG key for the apt repository:

    sudo apt-get update
    sudo apt-get -y --allow-unauthenticated install groonga-keyring
    sudo apt-get update

Install required softwares:

    sudo apt-get install -y libgroonga-dev npm make g++ pkg-config

Install Groonga CloudSearch:

    sudo npm install -y -g gcs

You have `gcs` command that starts Groonga CloudSearch service in
`/usr/local/bin/` directory.

To confirm that Groonga ClouldSearch is installed successfully, type
the following command:

    % gcs --version
    1.0.0

If you got 1.0.0, Groonga CloudSearch is installed successfully! Yey!

## Others {#others}

Groonga CloudSearch can be installed on other platforms by
[npm](http://npmjs.org/). npm is a package manager for Node.js and
bundled in Node.js. To install Node.js on your platform, see [install
document for Node.js](http://nodejs.org/#download). Type the following
command after you install Node.js:

    sudo npm install -y -g gcs

You have `gcs` command that starts Groonga CloudSearch service.

To confirm that Groonga ClouldSearch is installed successfully, type
the following command:

    % gcs --version
    1.0.0

If you got 1.0.0, Groonga CloudSearch is installed successfully! Yey!
