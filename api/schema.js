//import necessary modules
const graphql = require('graphql');
const joinMonster = require('join-monster');

const Movie = new graphql.GraphQLObjectType({
    name: 'Movie',
    extensions: {
        joinMonster: {
          sqlTable: 'movies',
          uniqueKey: 'id'
        }
      },
    fields: () => ({
        id: { type: graphql.GraphQLInt },
        title: { type: graphql.GraphQLString },
        year: { type: graphql.GraphQLString },
        url: { type: graphql.GraphQLString },
        artists: {
            type: new graphql.GraphQLList(Artists),
            extensions: {
                joinMonster: {
                    sqlJoin: (movieTable, artistsTable) => `${movieTable}.id = ${artistsTable}.movieid`
                }
            },
        }
    })
});

const Artists = new graphql.GraphQLObjectType({
    name: 'Artists',
    extensions: {
        joinMonster: {
            sqlTable: 'artists',
            uniqueKey: 'id'
        }
    },
    fields: () => ({
        movieid: { type: graphql.GraphQLInt },
        id: { type: graphql.GraphQLInt },
        name: { type: graphql.GraphQLString },
        charactername: { type: graphql.GraphQLString },
        movie: {
            type: new graphql.GraphQLList(Movie),
            extensions: {
                joinMonster: {
                    sqlJoin: (artistsTable, movieTable) => `${artistsTable}.movieid = ${movieTable}.id`
                }
            },
        }

    })
})

module.exports = { Movie, Artists }