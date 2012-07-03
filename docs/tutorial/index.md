---
layout: default
title: Tutorial
---
# Tutorial

## Install Groonga CloudSearch

Install Groonga Cloudsearch following [install instructions](../install/).

## Setup /etc/hosts

Groonga CloudSearch requires name-based virtualhosts configured. These commands will add configurations to the domain "example". Run these commands on the terminal:

    $ sudo sh -c 'echo "127.0.0.1 doc-example-00000000000000000000000000.localhost" >> /etc/hosts'
    $ sudo sh -c 'echo "127.0.0.1 search-example-00000000000000000000000000.localhost" >> /etc/hosts'

<img src="/tutorial/configure-hosts.png" alt="configuring /etc/hosts" width="100%" />

Note: A _domain_ encapsulates the data and search instances. See [Amazon CloudSearch Glossary - Amazon CloudSearch](http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/Glossary.html#searchdomain) for details.

## Start GCS server

You need to start GCS server. Run gcs command:

    $ gcs

<img src="/tutorial/gcs-started.png" alt="gcs server started" width="100%" />

GCS server will listen at http://127.0.0.1:3000/.

## Import example data

You can import example data into GCS with gcs-import-examples command. Use another terminal and execute the following command:

    $ gcs-import-examples

<img src="/tutorial/gcs-import-examples.png" alt="starting gcs-import-examples command" width="100%" />
<img src="/tutorial/gcs-import-examples-started.png" alt="gcs-import-examples command started" width="100%" />

Hit enter to start importing.

<img src="/tutorial/gcs-import-examples-finished.png" alt="gcs-import-examples finished" width="100%" />


## Search documents

Now you can search the documents. Open http://127.0.0.1:3000/ with your browser.
 Try 'tokyo' as a query.

<img src="/tutorial/web-ui.png" alt="searching 'tokyo' with web UI" width="100%" />

Now you can see the URL corresponding the query on the web interfece.
When opened, you will see the response body.

<img src="/tutorial/json-search-response.png" alt="JSON search response" width="100%" />

## Next step

To learn how to index the documents, [the source code of gcs-import-examples](https://github.com/groonga/gcs/blob/master/bin/gcs-import-examples) will help you.
