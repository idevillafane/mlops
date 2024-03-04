SELECT
    -- SCORES
   "user_id", "movie_id",  "date", "rating",
    -- USERS
    "Occupation", "active_since",
    -- MOVIES
    "name", "release_date", "imdb_url", "War", "Crime",
    "Drama", "action", "Comedy", "Horror", "sci_fi", "Fantasy",
    "Musical", "Mystery", "Romance", "Western", "unknown",
    "Thriller", "Adventure", "Animation", "film_noir", "childrens", "Documentary"
FROM {{ ref('scores') }} a
  LEFT JOIN {{ ref('users') }} b ON a.user_id=b.id
  LEFT JOIN {{ ref('movies') }} c ON a.movie_id=c.id
