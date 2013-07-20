Package.describe({
  summary: "template helper for cache busting URLs"
});

Package.on_use(function (api) {
  api.use('coffeescript', ['client', 'server']);
  api.add_files('bust-server.coffee', 'server');
  api.add_files('bust-client.coffee', 'client');
});
