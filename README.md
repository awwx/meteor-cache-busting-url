# cache-forever-helper

This package implements a template helper for cached resources.

Replace

    <img src="/image.jpg">

with

    <img src="{{cache "/image.jpg"}}">

and the `cache` template helper will return a URL such as

    /cache/image.jpg?40a9...

containing a hash of the file, so that if the file changes the URL
will also change.  The `/cache/` portion fetches the file with the
caching header turned on, so the browser will only need to fetch the
file again if it has changed.

Which is the theory anyway.  In my tests both Chrome and Firefox
fetched the file anyway after a code change (even with the
cache-control header set to max-age=31536000), so I'm not sure what
the deal is.
