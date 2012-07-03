---
title: Groonga CloudSearch 1.0 is out!
layout: post
---

Today we shipped the initial release of "Groonga CloudSearch". By the Groonga CloudSearch, you can try APIs of the Amazon CloudSearch without paying any fee. It is made for all web developers who are planning to build web apps with the Amazon CloudSearch. You can download the package and read the tutorial on [the home page of this project site](http://gcs.groonga.org/).


### What's the Amazon CloudSearch?

It provides ability to index and search various documents on the cloud. You can upload documents and get the search result as JSON resources via its Web API. So, you can build web apps easily, without setting up your custom search system (Solr, etc.) - instead you can use the Amazon CloudSearch as its back-end.

<a href="/images/architecture-trad-vs-acs-large.png" rel="lightbox"><img src="/images/architecture-trad-vs-acs-small.png" alt="(Figure 1: Legacy Web Apps v.s. Web Apps with Amazon CloudSearch)" /></a>

However, there are two issues. First, you have to learn that how to use APIs of the Amazon CloudSearch, from [the documents](http://aws.amazon.com/documentation/cloudsearch/). Second, it is a fee-based online service, so you have to pay money to try any feature - even if you just want to learn the API. So, you possibly think that it is hard to be tried.

### How the Groonga CloudSearch helps you?

It is named as "CloudSearch" but it's not a SaaS. It is a software installable to your computer (Mac OS X, Ubuntu, Debian, CentOS, and so on.)

<a href="/images/architecture-acs-vs-gcs-large.png" rel="lightbox"><img src="/images/architecture-acs-vs-gcs-small.png" alt="(Figure 2: Web Apps with Amazon CloudSearch v.s. Web Apps with Groonga CloudSearch)" /></a>

The Groonga CloudSearch works as a web server which provides Web APIs compatible to the Amazon CloudSearch via HTTP. So, on the early phase, you can develop web apps as you like, you can measure the traffic, and so on, without signing up to the Amazon Web Services. When you are ready to release your service on the Web, you'll switch the back-end from the Groonga CloudSearch to the Amazon CloudSearch. You just have to change the end point (hostname of the URL to access to APIs) from "localhost" to "amazonaws.com".

Currently, Groonga CloudSearch supports only some basic features of the Amazon CloudSearch APIs. We are keeping up to grow the compatibility. If you'd like to get involved, fork the [repository on GitHub](https://github.com/groonga/gcs) and send pull requests to us, please. Of course, we are also welcome your feedback.

