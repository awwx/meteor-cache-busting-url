# cache-forever-helper

This package implements a template helper for generating a "cache
busting" URL which includes the file hash as a query parameter.  See
the
[cache-forever](https://github.com/awwx/meteor-cache-forever#readme)
package for details on the `/cache` URL route.

Replace

    <img src="/image.jpg">

with

    <img src="{{cache "/image.jpg"}}">

and the `cache` template helper will generate a URL such as

    /cache/image.jpg?40a9...

where the query parameter is the file hash.
