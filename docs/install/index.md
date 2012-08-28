---
title: Install
layout: default
---

# Install

Groonga CloudSearch can be installed easily on the following platforms:

* [Mac OS X](#mac-os-x)
* [CentOS 6](#centos)
* [Ubuntu 12.04 LTS (Precise Pangolin)](#ubuntu)

How to install on [other platforms](#others) is described at the last.

## Mac OS X {#mac-os-x}

All-in-one package is provided for Mac OS X. You just download and
extract it. You don't need to install Xcode and so on.

    curl -O http://packages.groonga.org/macosx/gcs/gcs-{{ site.version }}.tar.gz
    tar xvzf gcs-{{ site.version }}.tar.gz

You have `gcs` command that starts Groonga CloudSearch service in
`gcs-{{ site.version }}/` directory. Add the absolute path to `gcs-{{ site.version }}/`
directory to `PATH` environment variable. Here are commands for bash
user to do it:

    echo "PATH=\"$PWD/gcs-{{ site.version }}:\$PATH\"" >> ~/.bash_login
    exec bash -l

To confirm that Groonga CloudSearch is installed successfully, type
the following command:

    $ gcs --version
    {{ site.version }}

If you got {{ site.version }}, Groonga CloudSearch is installed successfully! Yey!

## CentOS 6 {#centos}

(CentOS 5 isn't supported because Python 2.5 or later is required.)

There are yum repositories that provide softwares required by Groonga
CloudSearch. Here are instructions to install required softwares:

Add yum repositories for Node.js and [groonga](../faq/#search-engine):

    sudo rpm -ivh http://nodejs.tchol.org/repocfg/el/nodejs-stable-release.noarch.rpm
    sudo rpm -ivh http://packages.groonga.org/centos/groonga-release-1.1.0-0.noarch.rpm
    sudo yum makecache

Install required softwares:

    sudo yum install -y groonga-devel nodejs-compat-symlinks npm make

Install Groonga CloudSearch:

    sudo npm install -y -g gcs

You have `gcs` command that starts Groonga CloudSearch service in
`/usr/bin/` directory.

To confirm that Groonga CloudSearch is installed successfully, type
the following command:

    $ gcs --version
    {{ site.version }}

If you got {{ site.version }}, Groonga CloudSearch is installed successfully! Yey!

## Ubuntu 12.04 LTS (Precise Pangolin) {#ubuntu}

We have apt repositories that provide softwares required by Groonga
CloudSearch. Here are instructions to install required softwares:

Groonga CloudSearch package is hosted on [groonga](../faq/#search-engine)
apt repository.
To add apt repository for [groonga](../faq/#search-engine), create
`/etc/apt/sources.list.d/groonga.list` file with the following
content:

    deb http://packages.groonga.org/ubuntu/ precise universe
    deb-src http://packages.groonga.org/ubuntu/ precise universe

Install GPG key for the apt repository:

    sudo apt-get update
    sudo apt-get -y --allow-unauthenticated install groonga-keyring
    sudo apt-get update

Install the Groonga CloudSearch and depending libraries via the package "gcs":

    sudo apt-get install -y gcs

Then you have `gcs` command that starts Groonga CloudSearch service.
To confirm that Groonga CloudSearch is installed successfully, type
the following command:

    $ gcs --version
    {{ site.version }}

If you got {{ site.version }}, Groonga CloudSearch is installed successfully! Yey!

## Others {#others}

Groonga CloudSearch can be installed on other platforms by
[npm](http://npmjs.org/). npm is a package manager for Node.js and
bundled in Node.js. To install Node.js on your platform, see [install
document for Node.js](http://nodejs.org/#download). Type the following
command after you install Node.js:

    sudo npm install -y -g gcs

You have `gcs` command that starts Groonga CloudSearch service.

To confirm that Groonga CloudSearch is installed successfully, type
the following command:

    $ gcs --version
    {{ site.version }}

If you got {{ site.version }}, Groonga CloudSearch is installed successfully! Yey!
