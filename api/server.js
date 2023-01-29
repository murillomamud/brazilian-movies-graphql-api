const express = require('express')
const { graphqlHTTP } = require('express-graphql');
const schema = require('./queryRoot')

const app = express();


app.use('/api', graphqlHTTP({
    schema: schema,
    graphiql: true,
}));

app.listen(4000, () => console.log("🚀 Server started on port 4000 🚀"));

