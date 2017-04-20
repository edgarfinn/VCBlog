const path = require('path');
const dbQueries = require('../db_queries.js');

const handler = (request, reply) => {
  dbQueries.getPosts((err, postsArray) => {
    if (err) {
      return reply(err)
    }
    let homeContext = {
      posts: postsArray
    }
    console.log('homeContext: ', homeContext);
    reply.view('home', homeContext)
  });
}

module.exports = {
  method: 'GET',
  path: '/',
  handler: handler
}
