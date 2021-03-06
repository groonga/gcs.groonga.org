---
title: Restrictions
layout: default
---

# Current Restrictions of Groonga CloudSearch

## documents/batch API

* Poor error handling. Even if one of batches causes error, rest batches can be applied unexpectedly. (On ACS, all batches are ignored if one of them causes error.)
* "version" and "lang" don't work. Even if you specify those attributes, they do nothing.
* XML SDF is not available.
* XML type response is not available.

## search API

* Always search results are returned as a JSON.
* Custom rank expressions and threshold options are not supported yet.
* XML responses are not supported yet.
* ```rid``` in ```info``` object is always ```"000000000000000000000000000000000000000000000000000000000000000"```.
* ```cpu-time-ms ``` in ```info``` object is always ```0```.
* Some queries may produce responses not compatible with ACS. This restriction comes from the differences of the query interpretation between groonga's ```match``` parameter of ```select``` command and ACS ```q``` parameter. For example, the queries which have ```:```, ```>```, ```<``` and ```|``` will not work as ACS.
* ```match-expr``` is always ```''```

### facet

* Support only text and literal fields.
* facet-FIELD-top-n and facet-FIELD-sort parameters are not supported.
