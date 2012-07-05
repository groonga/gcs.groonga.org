---
title: Groonga CloudSearch 1.0 is out!
layout: post
---

Today we shipped the initial release of "Groonga CloudSearch". Groonga CloudSearch is an Amazon CloudSearch compatible open source full text search service. By Groonga CloudSearch, you can try Amazon CloudSearch API without paying any fee. It is made for all Web developers who are planning to build Web applications with Amazon CloudSearch. You can download the package and read the tutorial on [the home page of this project site](/).


### What's Amazon CloudSearch?

Amazon CloudSearch provides ability to index and search various documents in the cloud. You can upload documents and get the search result as JSON resources via its Web API. So, you can build Web applications easily, without setting up your custom search system ([Solr](http://lucene.apache.org/solr/), etc.) - instead you can use Amazon CloudSearch as its back-end.

<a href="/images/architecture-trad-vs-acs-large.png" rel="lightbox"><img src="/images/architecture-trad-vs-acs-small.png" alt="(Figure 1: Legacy Web Applications v.s. Web Applications with Amazon CloudSearch)" /></a>

However, there are two issues. First, you have to learn about how to use Amazon CloudSearch API, from [the documents](http://aws.amazon.com/documentation/cloudsearch/). Secondly, it is a fee-based online service, so you have to pay money to try any features - even if you just want to learn the API. So, it may be hard to try the API.

### How Groonga CloudSearch helps you?

Groonga CloudSearch resolves the above two issues. You can learn about Amazon CloudSearch API usage without any fee. You can use Groonga CloudSearch instead of Amazon CloudSearch for learning API usage.

[It has "Cloud" in its name it's not a SaaS](/docs/faq/#why-cloud-in-name). It is a software that [can be installed to your computer](/docs/install/). You can try Amazon CloudSearch API on your computer because Groonga CloudSearch provides Amazon CloudSearch compatible API.

<a href="/images/architecture-acs-vs-gcs-large.png" rel="lightbox"><img src="/images/architecture-acs-vs-gcs-small.png" alt="(Figure 2: Web Applications with Amazon CloudSearch v.s. Web Applications with Groonga CloudSearch)" /></a>

You can develop your Web applications that use Amazon CloudSearch on your computer with Groonga CloudSearch. You don't need to pay any fee for developing and testing your Web applications. When you are ready to release your service on the Web, you'll switch the back-end from Groonga CloudSearch to Amazon CloudSearch. You just change the endpoint (host name of the URL to access to APIs) from "localhost" to "amazonaws.com".

Currently, Groonga CloudSearch supports only some basic features of Amazon CloudSearch APIs. We are keeping up to grow the compatibility. If you'd like to get involved, fork [the repository on GitHub](https://github.com/groonga/gcs) and send pull requests to us, please. Of course, we also welcome your feedback.

