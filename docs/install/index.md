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

    curl -O http://packages.groonga.org/macosx/gcs/gcs-{{ site.gcs_version }}.tar.gz
    tar xvzf gcs-{{ site.gcs_version }}.tar.gz

You have `gcs` command that starts Groonga CloudSearch service in
`gcs-{{ site.gcs_version }}/` directory. Add the absolute path to `gcs-{{ site.gcs_version }}/`
directory to `PATH` environment variable. Here are commands for bash
user to do it:

    echo "PATH=\"$PWD/gcs-{{ site.gcs_version }}:\$PATH\"" >> ~/.bash_login
    exec bash -l

To confirm that Groonga CloudSearch is installed successfully, type
the following command:

    $ gcs --version
    {{ site.gcs_version }}

If you got {{ site.gcs_version }}, Groonga CloudSearch is installed successfully! Yey!

The all-in-one package also includes `gcs-console`, the administrative web interface server for Groonga CloudSearch. You can confirm the version of Groonga CloudSearch Console by the following command:

    $ gcs-console --version
    {{ site.gcs_console_version}}

If you've got {{site.gcs_console_version}}, `gcs-console` is successfully installed!

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
    {{ site.gcs_version }}

If you got {{ site.gcs_version }}, Groonga CloudSearch is installed successfully! Yey!

Groonga CloudSearch Console (`gcs-console`), the administrative web interface server for Groonga CloudSearch is provided as a separated package from `gcs`. You can install it as follows:

    sudo npm install -y -g gcs-console

Now you can confirm the version of Groonga CloudSearch Console by the following command:

    $ gcs-console --version
    {{ site.gcs_console_version}}

If you've got {{site.gcs_console_version}}, `gcs-console` is successfully installed!

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
    {{ site.gcs_version }}

If you got {{ site.gcs_version }}, Groonga CloudSearch is installed successfully! Yey!

Groonga CloudSearch Console (`gcs-console`), the administrative web interface server for Groonga CloudSearch is provided as a separated package from `gcs`. You can install it as follows:

    sudo apt-get install -y -g gcs-console

Now you can confirm the version of Groonga CloudSearch Console by the following command:

    $ gcs-console --version
    {{ site.gcs_console_version}}

If you've got {{site.gcs_console_version}}, `gcs-console` is successfully installed!

### Service mode

After installation, you can start the Groonga CloudSearch server as a service
(daemon), with the default port (7575):

    $ sudo service gcs start

You can configure behaviours of the `gcs` service via a configuration file
`/etc/default/gcs` .

And, you can start Groonga CloudSearch Console as a service (daemon), with the
default port (7576):

    $ sudo service gcs-console start

These services work as a process of the `gcs` user.

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
    {{ site.gcs_version }}

If you got {{ site.gcs_version }}, Groonga CloudSearch is installed successfully! Yey!

Groonga CloudSearch Console (`gcs-console`), the administrative web interface server for Groonga CloudSearch is provided as a separated package from `gcs`. You can install it as follows:

    sudo npm install -y -g gcs-console

Now you can confirm the version of Groonga CloudSearch Console by the following command:

    $ gcs-console --version
    {{ site.gcs_console_version}}

If you've got {{site.gcs_console_version}}, `gcs-console` is successfully installed!
