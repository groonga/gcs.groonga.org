---
title: Restrictions
layout: default
---

# Current Restrictions of Groonga CloudSearch

## documents/batch API

 * Poor error handling. Even if one of batches causes error, rest batches can be applied unexpectedly. (On ACS, all batches are ignored if one of them causes error.)
 * "version" and "lang" don't work. Even if you specify those attributes, they do nothing.
 * "delete" type batch is not available.
 * The name of the domain cannot be given as a part of the sub domain. You always have to specify "DomainName" query parameter to specify the domain.
 * Multiple values (given as an array) is not available on a field.
 * XML SDF is not available.
 * XML type response is not available.
