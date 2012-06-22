---
layout: default
style: screen/home.css
---

<section id="cover">
  <h1><span class="main-title">Groonga CloudSearch</span>
      <span class="sub-title">Open source implementation of Amazon CloudSearch</span></h1>
  <p id="description">The Groonga CloudSearch (GCS) is an alternative implementation of
     the Amazon CloudSearch (ACS), developed as an OSS project.
     You can try the ACS freely without accessing the actual service.</p>
  <p id="download"><a href="./install.html">Download</a></p>
</section>

## Functional comparison

<table id="functional-comparison-table">
  <thead>
  <tr>
    <th>Category</th>
    <th>Feature</th>
    <th>Groonga CloudSearch</th>
    <th>Amazon CloudSearch</th>
  </tr>
  </thead>

  <tbody>
  <tr>
    <th rowspan="9">Configuration</th>
    <td>Creating search domains</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Creating text type index fields</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Authentications</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Deletion of stored documents</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Deletion of existing domains</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Configuring existing search domains</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Configuring existing index fields</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Re-indexing of documents</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Various type index fields (integer, reference, and so on)</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>

  <tr>
    <th rowspan="4">Uploading</th>
    <td>Uploading search documents as JSON batches (SDF batches)</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Strict validations</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Atomic operations</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Document versions</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>

  <tr>
    <th rowspan="7">Searching</th>
    <td>Searching documents by simple queries</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Getting facet information with search results</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Result ranking</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Stemming</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Stopwords</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Synonyms</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Searching documents by complex queries</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>

  <tr>
    <th rowspan="6">Misc.</th>
    <td>XML type requests and responses</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Management Console</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Command line tools</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Works on the cloud</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Native CJK support (and better tokenizer)</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ng">&#x2715;</td>
  </tr>
  <tr>
    <td>Works locally</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ng">&#x2715;</td>
  </tr>
  </tbody>
</table>
