# gsMovies API 🎬🍿

This is the backend API for the gsMovies web application, built using Spring Boot. The API provides various endpoints for managing movies, reviews, and users. It connects to a MongoDB database and is deployed on [Render](https://render.com/).

## Features

- **CRUD Operations**: Perform Create, Read, Update, and Delete operations on movies and reviews.
- **MongoDB Integration**: Leverages MongoDB as the database for efficient and scalable data storage.
- **RESTful API**: Well-defined API endpoints for interacting with movies and reviews.
- **Deployed on Render**: Easily accessible via Render's platform.
- **Exception Handling**: Global exception handling for consistent API responses.

## Tech Stack

- **Backend Framework**: Spring Boot
- **Database**: MongoDB (NoSQL)
- **Deployment**: Render
- **API Documentation**: Swagger/OpenAPI

### Endpoints

Here are some of the API's core endpoints:

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| Method     |                            Endpoint                               |                    Body                       |               Descriptiopn        |
|------------|-------------------------------------------------------------------|-----------------------------------------------|-----------------------------------|
| GET        | `https://movies-spring-ewi3.onrender.com/api/v1/movies`           |            Not Required                       |         Get a list of all movies  |
| GET        | `https://movies-spring-ewi3.onrender.com/api/v1/movies/{imdbId}`  |            Not Required                       |   Get details of a specific Movie |  
| POST       | `https://movies-spring-ewi3.onrender.com/api/v1/movies/reviews`   | {imddbId: "id of movie",review: "review body"}|    POST a review about a movie    |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
