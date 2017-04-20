const hapi = require('hapi');
const vision = require('vision');
const path = require('path');
const inert = require('inert');
const router = require('./routes/index.js');
const handlebars = require('handlebars');

const port = Number(process.argv[2] || 8998);

const server = new hapi.Server();


server.connection({
  port:port,
  host:'localhost'
})

server.register([inert, vision], (err) => {
  if (err) throw err;

  server.views({
    engines: {
      hbs: handlebars
    },
    relativeTo: __dirname,
    helpersPath: 'views/helpers',
    path: 'views',
    layout: 'layout',
    partialsPath: 'views/partials',
    layoutPath: 'views/layout'
  })

  server.route(router);

  server.start((err) => {
    if (err) throw err;
    console.log('Server running at:', server.info.uri);
  });
});
