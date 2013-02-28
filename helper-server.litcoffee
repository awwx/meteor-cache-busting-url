    url = __meteor_bootstrap__.require 'url'

    hashes = {}
    _.each(__meteor_bootstrap__.bundle.manifest, (resource) ->
      if resource.where is 'client'
        hashes[url.parse(resource.url).pathname] = resource.hash
    )
    __meteor_runtime_config__.staticURLHashes = hashes
