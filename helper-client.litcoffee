    Handlebars.registerHelper 'cache', (url) ->
      hash = __meteor_runtime_config__?.staticURLHashes?[url]
      if hash
        '/cache' + url + '?' + hash
      else
        throw new Error(
          'in "cache" template helper, url is not a known static resource: ' + url
        )
