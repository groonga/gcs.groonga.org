---
layout: default
style: screen/home.css
description: Groonga CloudSearch is an Amazon CloudSearch compatible open source full text search server.
---

<section id="cover">
  <h1><span class="main-title">Groonga CloudSearch</span>
      <span class="sub-title">Open Source Amazon CloudSearch on Your Computer</span></h1>

  <p id="description">Groonga CloudSearch is an Amazon CloudSearch
     compatible open source full text search server.</p>

  <div id="featured">
    <p id="version"><span id="version-number">v1.0.0</span>
                    <span id="release-date">(2012-07-05)</span></p>
    <p id="install"><a href="docs/install/">Install</a></p>
    <p id="tutorial"><a href="docs/tutorial/">Tutorial</a></p>
  </div>
</section>


<section id="more-resources">
  <h2>More Resources</h2>
  <ul>
    <li><a href="/docs/">Documentation</a></li>
    <li><a href="/community/">Community</a></li>
    <li><a href="/blog/">Blog</a></li>
  </ul>
</section>


## Functional comparison {#functional-comparison}

<table id="functional-comparison-table">
  <thead>
  <tr>
    <th>Category</th>
    <th>Feature</th>
    <th>Groonga CloudSearch</th>
    <th>Amazon CloudSearch</th>
  </tr>
  </thead>

  <tbody id="functional-comparison-configuration">
  <tr>
    <th rowspan="9"><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/ConfigAPI.html">Configuration</a></th>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/creatingdomains.html">Creating search domains</a></td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/configureindexfields.html">Creating text type index fields</a></td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/configureindexfields.html">Creating uint type index fields</a></td>
    <td class="functional-ok">&#x2713; (v1.1.0-)</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/configureindexfields.html">Creating literal type index fields</a></td>
    <td class="functional-ok">&#x2713; (v1.1.0-)</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/requestauth.html">Authentications</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/deletedomain.html">Deletion of existing domains</a></td>
    <td class="functional-ok">&#x2713; (v1.1.0-)</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/configureaccess.html">Configuring existing search domains</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/configureindexfields.html">Configuring existing index fields</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/indexing.html">Re-indexing of documents</a></td>
    <td class="functional-ok">&#x2713; (v1.1.0-)</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/addsourcefield.html">Sources for index fields</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  </tbody>

  <tbody id="functional-comparison-uploading">
  <tr>
    <th rowspan="5"><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/DocSvcAPI.html">Uploading</a></th>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/senddata.html">Uploading search documents as JSON batches (SDF batches)</a></td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/deldocs.html">Deletion of stored documents</a></td>
    <td class="functional-ok">&#x2713; (v1.1.0-)</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/Limits.html">Strict validations</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/creatingsdf.html">Atomic operations</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/versioning.html">Document versions</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  </tbody>

  <tbody id="functional-comparison-searching">
  <tr>
    <th rowspan="7"><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/SearchAPI.html">Searching</a></th>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/simplesearches.html">Searching documents by simple queries</a></td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/faceting.html">Getting facet information with search results</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/tuneranking.html">Result ranking</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/stemmingopts.html">Stemming</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/stoppingopts.html">Stopwords</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/synonymopts.html">Synonyms</a></td>
    <td class="functional-ok">&#x2713; (v1.1.0-)</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/searching.html">Searching documents by complex queries</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  </tbody>

  <tbody id="functional-comparison-misc">
  <tr>
    <th rowspan="8">Misc.</th>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/DocumentsBatch.XML.html">XML type requests and responses</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="https://console.aws.amazon.com/cloudsearch/home/">Management Console</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td><a href="http://docs.amazonwebservices.com/cloudsearch/latest/developerguide/SvcCLT.html">Command line tools</a></td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Works locally</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ng">&#x2715;</td>
  </tr>
  <tr>
    <td>Works in the cloud</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Auto scaling</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>SaaS</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Native CJK support (and better tokenizer)</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ng">&#x2715;</td>
  </tr>
  </tbody>
</table>
