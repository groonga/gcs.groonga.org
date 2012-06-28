---
layout: default
title: Tutorial
---
# Tutorial

## Install Groonga CloudSearch

Install Groonga Cloudsearch following [install instructions](../install/).

## Setup /etc/hosts

Groonga CloudSearch requires name-based virtualhosts configured. These commands will add configurations to the domain "example".

    $ sudo sh -c 'echo "127.0.0.1 doc-example-00000000000000000000000000.localhost" >> /etc/hosts'
    $ sudo sh -c 'echo "127.0.0.1 search-example-00000000000000000000000000.localhost" >> /etc/hosts'

## Start GCS server

You need to start GCS server. Run gcs command:

    $ gcs

GCS server will listen at http://127.0.0.1:3000/.

## Import example data

You can import example data into GCS with gcs-import-examples command.

    $ gcs-import-examples

## Search documents

Now you can search the documents. Open http://127.0.0.1:3000/ with your browser.
 Try 'tokyo' as a query.
