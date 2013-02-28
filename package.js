Package.describe({
  summary: "template helper for cache busting URLs"
});

Package.on_use(function (api) {
  api.use('cache-forever');
  api.add_files('helper-server.js', 'server');
  api.add_files('helper-client.js', 'client');
});
