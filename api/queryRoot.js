//import libraries
const graphql = require('graphql')
const resolvers = require('./resolve')
const { Movie, Artists } = require('./schema')

const QueryRoot = new graphql.GraphQLObjectType({
    name: 'Query',
    fields: () => ({
        hello: {
            type: graphql.GraphQLString,
            resolve: resolvers.Query.hello
        },
        Movie: {
            type: new graphql.GraphQLList(Movie),
            resolve: resolvers.Query.Movie
        },
        Artists: {
            type: new graphql.GraphQLList(Artists),
            resolve: resolvers.Query.Artists
        }
    })
})

const schemaQueryRoot = new graphql.GraphQLSchema({ query: QueryRoot });

module.exports = schemaQueryRoot