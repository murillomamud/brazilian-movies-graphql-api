//import libraries
const { Client } = require('pg')
const joinMonster = require('join-monster')
const { Movie, Artists } = require('./schema')
require('dotenv').config()

const client = new Client({
    host: process.env.POSTGRES_HOST || "localhost",
    user: process.env.POSTGRES_USER || "postgres",
    password: process.env.POSTGRES_PASSWORD || "postgres",
    database: process.env.POSTGRES_DATABASE || "postgres",
    port: 5432
})

client.connect().then(result => console.log("🗄️  Database Available 🗄️")).catch(err => console.log(err))

const resolvers = {
    Query: {
        hello: () => "Hello world!",
        Movie: (parent, args, context, resolveInfo) => {
            return joinMonster.default(resolveInfo, {}, sql => {
                return client.query(sql)
            })
        },
        Artists: (parent, args, context, resolveInfo) => {
            return joinMonster.default(resolveInfo, {}, sql => {
                return client.query(sql)
            })
        }
    }
}

module.exports = resolvers