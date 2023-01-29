# GraphQL API to retrieve data about Brazilian Movies

It's a simple API to retrieve data about Brazilian Movies. The data is stored in a PostgreSQL database.

To run this project, you need to have Docker and Docker Compose installed.

Read more about docker [here](https://docs.docker.com/engine/installation/) and docker-compose [here](https://docs.docker.com/compose/install/).

## Running the project
> docker-compose up

## Querying the API

Access the GraphQL Playground at http://localhost:4000/api

### Query Movies Example

```
{
  Movie {
    id
    title
    year
    url
    artists{
      movieid
      id
      name
      charactername
    }
  }
}
```

### Query Artists Example

```
{
  Artists {
    movieid
    id
    name
    charactername
    movie{
      id
      title
      year
      url
    }
  }
}
```

### To query it in Postman

```
POST http://localhost:4000/api
Content-Type: application/json

{
  "query": "query { Movie { id title year url artists { movieid id name charactername } } }"
}
```

### Next Steps
-   [ ] Create Mutation to add new movies
-   [ ] Create Mutation to add new artists
-   [ ] Create Mutation to Update movies
-   [ ] Create Mutation to Update artists