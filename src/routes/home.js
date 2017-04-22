const path = require('path');
const dbQueries = require('../db_queries.js');

const handler = (request, reply) => {
  dbQueries.getPosts((err, postsArray) => {
    if (err) {
      return reply(err)
    }
    // parse stringified arrays
    let homeContext = {
      posts: postsArray.map(function(postElement){
        var newObj = postElement;
        newObj.tags = JSON.parse(postElement.tags);
        newObj.post_category = JSON.parse(postElement.post_category);
        return newObj;
      })
    };


    reply.view('home', homeContext);
  });
}

module.exports = {
  method: 'GET',
  path: '/',
  handler: handler
}
