# cache-busting-url

This package implements a template helper for generating a "cache
busting" URL which includes the file hash as a query parameter.

Using a cache busting URL ensures that the browser uses the latest
version of a file.  Meteor serves static assets (the JavaScript, CSS,
and files in the `public` subdirectory) with caching headers turned
on.  Because the file hash is guaranteed to change if the file
contents change, incorporating the file hash into the URL ensures that
the browser fetches the new file from the server instead of using the
old file in its cache.

Note that many browsers check for file changes even with the cache
headers turned on, and when they do using a cache busting URL isn't
necessary.

The cache busting URL can only be generated for files in the
application bundle, which include the JavaScript and CSS assets, and
files in the `public` directory.

The file hashes are sent to the client in the Meteor runtime config
(so that the template helper knows what the file hashes are); so this
could slow application loading time if the number of file in the
`public` directory is extremely large.


## Example

Replace

    <img src="/image.jpg">

with

    <img src="{{bustCcache "/image.jpg"}}">

and the template helper will generate a URL such as

    /image.jpg?40a9...

where the query parameter is the file hash.


## Support

Support my work by making a weekly contribution of your choice with
[Gittip](https://www.gittip.com/awwx/).
