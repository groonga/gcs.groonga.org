---
title: FAQ
layout: default
---

# FAQ

## Why Groonga CloudSearch development is started? {#why-started}

It's for development.

Full text search services in the cloud will be increased in the
future. They will be provided as only service. You cannot use those
services locally such as on your computer and in your local
network. Normally, you don't need to use those services locally. But
there are some useful cases if you can use those services locally. One
of them is development.

You will do try and error on development. It's helpful that you can do
it locally because it is fast rather than remote access and doesn't
cause fee. Fast and no fee are important for TDD style development and
development with continuous integration.

## Does Groonga CloudSearch work in the cloud? {#work-in-the-cloud}

No. Groonga CloudSearch isn't provided as SaaS and doesn't support
auto scale-out. You need to install Groonga CloudSearch by yourself
and Groonga CloudSearch works as one full text search service
instance.

But [installing](../install/) is easy rather than enables Amazon
CloudSearch. You just download, extract and run it! Try Groonga
CloudSearch before trying Amazon CloudSearch. You can get Amazon
CloudSearch compatible API without fee.

## Why Groonga CloudSearch has "Cloud" in its name? {#why-cloud-in-name}

It's for indicating Amazon CloudSearch compatible API service with its
name.

Groonga CloudSearch doesn't work as a cloud service but may work as it
in the future.

## What language processor is used? {#language-processor}

Groonga CloudSearch uses [node.js](http://nodejs.org/).

## What full text search engine is used? {#search-engine}

Groonga CloudSearch uses [groonga](http://groonga.org/) as full text
search engine. Groonga is an open source fast full text search
engine. It supports real-time search without slowing down search
throughput. It means that you can update your data without slowing
down search performance and search the updated data at once.

## Is Groonga CloudSearch 100% compatible Amazon CloudSearch API? #{#api-compatibility}

No. Groonga CloudSearch doesn't provide 100% compatible API yet.  It
just provides only a few important APIs. See [functional comparison
table](/#functional-comparison) for list of implemented API.

Groonga CloudSearch will provide 100% compatible Amazon CloudSearch
API in the future. Join our [community](../community/) to implement
open source full text search service!

## How to contribute? {#how-to-contribute}

Groonga CloudSearch is developed on GitHub. Please use GitHub style
contribution:

1. Fork [groonga/gcs](https://github.com/groonga/gcs)
2. (Develop)
3. Send a pull request

See also [Using Pull Requests -
github:help](https://help.github.com/articles/using-pull-requests).
