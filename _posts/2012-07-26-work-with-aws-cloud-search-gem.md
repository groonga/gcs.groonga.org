---
title: Using Groonga CloudSearch with aws_cloud_search gem
layout: post
published: false
---
### Introduction

This article describes how to use Groonga CloudSearch with [aws\_cloud\_search][].

Groonga CloudSearch is an Amazon CloudSearch compatible open source full text search server.
With Groonga CloudSearch, you can try Amazon CloudSearch APIs on your local machine.

[aws\_cloud\_search][] is a Ruby library (gem) which wraps Amazon CloudSearch APIs. You can use aws\_cloud\_search to index your documents and search them. Though aws\_cloud\_search itself does not support Groonga CloudSearch, with a small hack (by monkey patching), we can direct its requests toward Groonga CloudSearch instead of Amazon CloudSearch. That means we can use aws\_cloud\_search gem with Groonga CloudSearch.

### Prerequisites

In this article, we assume that you

 * are working on some \*NIX environment, such as Mac OS X and Linux.
 * have finished [the tutorial of Groonga CloudSearch][tutorial].
 * have [Ruby][ruby] setup and basic knowledge about [Ruby][ruby].

### Prepare Groonga CloudSearch and example documents

First of all, let's try searching with Groonga CloudSearch and aws\_cloud\_search. In this section, we will use the documents prepared in the [tutorial][] to search for simplicity of explanation. You need to finish the [tutorial][] before you proceed. The way to index your own documents with aws\_cloud\_search will described in the later section.

### Setup aws\_cloud\_search

Install aws\_cloud\_search. We use [RubyGems][rubygems]. Run `gem install asw_cloud_search` on your terminal.

    $ gem install aws_cloud_search
    Successfully installed aws_cloud_search-0.0.2
    1 gem installed
    Installing ri documentation for aws_cloud_search-0.0.2...
    Installing RDoc documentation for aws_cloud_search-0.0.2...


### Prepare a script to direct the requests to Groonga CloudSearch

As the URLs that aws\_cloud\_search to connect with are hard-coded,
we need a small patch to modify them.

Save the following code as `dirct_to_local_gcs.rb`.

    # A small hack to use Groonga CloudSearch.
    # We override these three methods to direct requests Groonga CloudSearch
    # working on the localhost:7575.
    # We use http://xip.io/, which provides wildcard DNS for any IP address.
    module AWSCloudSearch
      def self.search_url(domain, region="us-east-1")
        "http://search-#{domain}.#{region}.127.0.0.1.xip.io:7575"
      end

      def self.document_url(domain, region="us-east-1")
        "http://doc-#{domain}.#{region}.127.0.0.1.xip.io:7575"
      end

      def self.configuration_url
        "https://cloudsearch.us-east-1.127.0.0.1.xip.io:7575"
      end
    end

This code overrides aws\_cloud\_search to direct its requests to Groonga CloudSearch, which is running on `localhost:7575`.

### Search the documents

In order to illustrate how to make search requests with aws\_cloud\_search for Groonga CloudSearch, we create a small script to search the `example` domain on `localhost:7575`, which is created the [tutorial][].

Save the following code as `search.rb`.

    #!/usr/bin/env ruby

    require 'aws_cloud_search'
    require './direct_to_local_gcs' # direct requests to localhost:7575

    # Initiate a CloudSearch object corresponds to the example domain.
    domain_name = 'example-00000000000000000000000000'
    cloud_search = AWSCloudSearch::CloudSearch.new(domain_name)

    # Take a query string from the command line argument.
    query = ARGV.join(' ')

    # Create a search request object for the query.
    search_request = AWSCloudSearch::SearchRequest.new
    search_request.q = query

    # Issue the request.
    search_response = cloud_search.search(search_request)

    # Show the results.
    puts "#{search_response.found} documents are found for the query '#{query}':"

    search_response.hits.each do |hit|
      p hit
    end

You can execute the search with the script by `ruby search.rb [query]`.
Don't forget to start gcs server on `localhost:7575` beforehand (See details in the [tutorial][]).

The output should be like the following:

    $ ruby search.rb tokyo
    3 documents are found for the query 'tokyo':
    {"id"=>"id1", "data"=>{"_id"=>[1], "_key"=>["id1"], "address"=>["Shibuya, Tokyo, Japan"], "email_address"=>["info@razil.jp"], "name"=>["Brazil"]}}
    {"id"=>"id3", "data"=>{"_id"=>[3], "_key"=>["id3"], "address"=>["Hongo, Tokyo, Japan"], "email_address"=>["info@clear-code.com"], "name"=>["ClearCode Inc."]}}
    {"id"=>"id9", "data"=>{"_id"=>[9], "_key"=>["id9"], "address"=>["Tokyo, Japan"], "email_address"=>[""], "name"=>["Umbrella Corporation"]}}

It works. You can modify this script to fit on your needs.

### Index your documents

This section describes the way to index your documents by aws\_cloud\_search.
For explanation, we create a simple CUI tool to index an entry given from
command line arguments.

Save the following code as `index.rb`.

    #!/usr/bin/env ruby

    require 'aws_cloud_search'
    require './direct_to_local_gcs' # direct requests to localhost:7575

    # Initiate a CloudSearch object corresponds to the example domain.
    domain_name = 'example-00000000000000000000000000'
    cloud_search = AWSCloudSearch::CloudSearch.new(domain_name)

    # Take the data from command line arguments.
    id, name, address, email_address = ARGV

    # Create a document to be indexed.
    document = AWSCloudSearch::Document.new

    document.id = id
    document.add_field :name, name
    document.add_field :address, address
    document.add_field :email_address, email_address

    # Create a batch to index the document.
    batch = AWSCloudSearch::DocumentBatch.new
    batch.add_document document

    # Issue the request.
    response = cloud_search.documents_batch(batch)

    # Show the response.
    p response

  The script `index.rb` takes four arguments: `id`, `name`, `address` and `email_addess`.
  Let us try to index a document.

    $ ruby index.rb id11 "Snowy Corporation" "Tokyo, Japan" snowy@example.com
    {"status"=>"success", "adds"=>1, "deletes"=>0}

  The document is successfully indexed.

  Search by query `tokyo` again to check if the new document is searchable.

    $ ruby search.rb tokyo
    4 documents are found for the query 'tokyo':
    {"id"=>"id1", "data"=>{"_id"=>[1], "_key"=>["id1"], "address"=>["Shibuya, Tokyo, Japan"], "email_address"=>["info@razil.jp"], "name"=>["Brazil"]}}
    {"id"=>"id3", "data"=>{"_id"=>[3], "_key"=>["id3"], "address"=>["Hongo, Tokyo, Japan"], "email_address"=>["info@clear-code.com"], "name"=>["ClearCode Inc."]}}
    {"id"=>"id9", "data"=>{"_id"=>[9], "_key"=>["id9"], "address"=>["Tokyo, Japan"], "email_address"=>[""], "name"=>["Umbrella Corporation"]}}
    {"id"=>"id11", "data"=>{"_id"=>[20], "_key"=>["id11"], "address"=>["Tokyo, Japan"], "email_address"=>["snowy@example.com"], "name"=>["Snowy Corporation"]}}

  The number of hit documents have increased to 4 (formerly it was 3), as it includes the new document. The last document is that we have indexed by `index.rb` script.

### Remove the documents

Removing document is done by the quite similar way to indexing.
Save the following code as `delete.rb`.

    #!/usr/bin/env ruby

    require 'aws_cloud_search'
    require './direct_to_local_gcs' # direct requests to localhost:7575

    # Initiate a CloudSearch object corresponds to the example domain.
    domain_name = 'example-00000000000000000000000000'
    cloud_search = AWSCloudSearch::CloudSearch.new(domain_name)

    # Take the document id to be deleted from the command line argument.
    id = ARGV.shift

    # Create a document to be deleted.
    document = AWSCloudSearch::Document.new
    document.id = id

    # Create a batch to remove the document.
    batch = AWSCloudSearch::DocumentBatch.new
    batch.delete_document document

    # Issue the request.
    response = cloud_search.documents_batch(batch)

    # Show the response
    p response

In order to delete the document with id = `id11` (the document added in the previous section), run `ruby index.rb id11`.

    $ ruby delete.rb id11
    {"status"=>"success", "adds"=>0, "deletes"=>1}

The removed entry, `Snowy Corporation` is no longer appeared in the search results.

    $ ruby search.rb tokyo
    3 documents are found for the query 'tokyo':
    {"id"=>"id1", "data"=>{"_id"=>[1], "_key"=>["id1"], "address"=>["Shibuya, Tokyo, Japan"], "email_address"=>["info@razil.jp"], "name"=>["Brazil"]}}
    {"id"=>"id3", "data"=>{"_id"=>[3], "_key"=>["id3"], "address"=>["Hongo, Tokyo, Japan"], "email_address"=>["info@clear-code.com"], "name"=>["ClearCode Inc."]}}
    {"id"=>"id9", "data"=>{"_id"=>[9], "_key"=>["id9"], "address"=>["Tokyo, Japan"], "email_address"=>[""], "name"=>["Umbrella Corporation"]}}

### NOTE Do we need a more realistic example like Sinatra app?

### Summary

  TODO

  [aws\_cloud\_search]: https://github.com/spokesoftware/aws\_cloud\_search
  [tutorial]: /docs/tutorial/
  [ruby]: http://www.ruby-lang.org/en/
  [rubygems]: http://rubygems.org/
