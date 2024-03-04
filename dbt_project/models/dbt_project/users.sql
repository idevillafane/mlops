SELECT
  "id"::INT,
  "Occupation",
  "Active_Since"::TIMESTAMP AS "active_since"
FROM {{ source('raw_data', 'users') }}
