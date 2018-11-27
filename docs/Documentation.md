# Cinema API documentation
- Movies
- People

# Movies


## GET /movies

### Description:
Method index - List all movies

### Request headers:
```json
{
  "AUTHORIZATION": "user_token",
  "Content-Type": "application/json",
  "Accept": "application/json"
}
```

### Path parameters:
```json
{
}
```

### Body Parameters:
```json
{
}
```

### Response status:
200

### Response headers:
```json
{
  "X-Frame-Options": "SAMEORIGIN",
  "X-XSS-Protection": "1; mode=block",
  "X-Content-Type-Options": "nosniff",
  "X-Download-Options": "noopen",
  "X-Permitted-Cross-Domain-Policies": "none",
  "Referrer-Policy": "strict-origin-when-cross-origin",
  "Content-Type": "application/json; charset=utf-8"
}
```

### Response body:
```json
[
  {
    "id": 1,
    "title": "Here's looking at you, kid.",
    "release_year": "MMXVIII",
    "casting": [

    ],
    "directors": [

    ],
    "producers": [

    ]
  },
  {
    "id": 2,
    "title": "I love the smell of napalm in the morning.",
    "release_year": "MMXVIII",
    "casting": [

    ],
    "directors": [

    ],
    "producers": [

    ]
  },
  {
    "id": 3,
    "title": "I love the smell of napalm in the morning.",
    "release_year": "MMXVIII",
    "casting": [

    ],
    "directors": [

    ],
    "producers": [

    ]
  },
  {
    "id": 4,
    "title": "Fasten your seatbelts. It's going to be a bumpy night.",
    "release_year": "MMXVIII",
    "casting": [

    ],
    "directors": [

    ],
    "producers": [

    ]
  },
  {
    "id": 5,
    "title": "I love the smell of napalm in the morning.",
    "release_year": "MMXVIII",
    "casting": [

    ],
    "directors": [

    ],
    "producers": [

    ]
  },
  {
    "id": 6,
    "title": "I'm going to make him an offer he can't refuse.",
    "release_year": "MMXVIII",
    "casting": [

    ],
    "directors": [

    ],
    "producers": [

    ]
  },
  {
    "id": 7,
    "title": "Go ahead, make my day.",
    "release_year": "MMXVIII",
    "casting": [

    ],
    "directors": [

    ],
    "producers": [

    ]
  }
]
```

## POST /movies

### Description:
Method Create - Creates a movie

### Request headers:
```json
{
  "AUTHORIZATION": "user_token",
  "Content-Type": "application/json",
  "Accept": "application/json"
}
```

### Path parameters:
```json
{
}
```

### Body Parameters:
```json
{
  "movie": {
    "release": "1999-10-01",
    "roles_attributes": [
      {
        "role_type": "actor",
        "person_id": "1"
      }
    ],
    "title": "un titulo"
  }
}
```

### Response status:
201

### Response headers:
```json
{
  "X-Frame-Options": "SAMEORIGIN",
  "X-XSS-Protection": "1; mode=block",
  "X-Content-Type-Options": "nosniff",
  "X-Download-Options": "noopen",
  "X-Permitted-Cross-Domain-Policies": "none",
  "Referrer-Policy": "strict-origin-when-cross-origin",
  "Content-Type": "application/json; charset=utf-8",
  "access-token": " ",
  "token-type": "Bearer",
  "client": "OnSypyI9CJnOhHCY-C1yOw",
  "expiry": " ",
  "uid": "admin@mail.com"
}
```

### Response body:
```json
{
  "id": 9,
  "title": "un titulo",
  "release_year": "MCMXCIX",
  "casting": [
    {
      "id": 1,
      "first_name": "Stacy",
      "last_name": "Langworth",
      "created_at": "2018-11-27T00:40:20.876Z",
      "updated_at": "2018-11-27T00:40:20.876Z"
    }
  ],
  "directors": [

  ],
  "producers": [

  ]
}
```

## PUT /movies/10

### Description:
Method Update - updates a movie

### Request headers:
```json
{
  "AUTHORIZATION": "user_token",
  "Content-Type": "application/json",
  "Accept": "application/json"
}
```

### Path parameters:
```json
{
  "id": "10"
}
```

### Body Parameters:
```json
{
  "movie": {
    "release": "2018-11-25",
    "roles_attributes": [
      {
        "role_type": "director",
        "person_id": "2"
      }
    ],
    "title": "update title"
  },
  "id": "10"
}
```

### Response status:
200

### Response headers:
```json
{
  "X-Frame-Options": "SAMEORIGIN",
  "X-XSS-Protection": "1; mode=block",
  "X-Content-Type-Options": "nosniff",
  "X-Download-Options": "noopen",
  "X-Permitted-Cross-Domain-Policies": "none",
  "Referrer-Policy": "strict-origin-when-cross-origin",
  "Content-Type": "application/json; charset=utf-8",
  "access-token": " ",
  "token-type": "Bearer",
  "client": "uB1-VUHCwhnIZCUTLar7Lw",
  "expiry": " ",
  "uid": "admin@mail.com"
}
```

### Response body:
```json
{
  "id": 10,
  "title": "update title",
  "release_year": "MMXVIII",
  "casting": [

  ],
  "directors": [
    {
      "id": 2,
      "first_name": "Vinnie",
      "last_name": "Brekke",
      "created_at": "2018-11-27T00:40:21.042Z",
      "updated_at": "2018-11-27T00:40:21.042Z"
    }
  ],
  "producers": [

  ]
}
```

# People


## GET /people

### Description:
Method Index - list people

### Request headers:
```json
{
  "AUTHORIZATION": "user_token",
  "Content-Type": "application/json",
  "Accept": "application/json"
}
```

### Path parameters:
```json
{
}
```

### Body Parameters:
```json
{
}
```

### Response status:
200

### Response headers:
```json
{
  "X-Frame-Options": "SAMEORIGIN",
  "X-XSS-Protection": "1; mode=block",
  "X-Content-Type-Options": "nosniff",
  "X-Download-Options": "noopen",
  "X-Permitted-Cross-Domain-Policies": "none",
  "Referrer-Policy": "strict-origin-when-cross-origin",
  "Content-Type": "application/json; charset=utf-8"
}
```

### Response body:
```json
[
  {
    "id": 3,
    "first_name": "Maxie",
    "last_name": "Purdy",
    "as_director": [

    ],
    "as_producer": [

    ],
    "as_actor": [

    ]
  },
  {
    "id": 4,
    "first_name": "Alethea",
    "last_name": "Veum",
    "as_director": [

    ],
    "as_producer": [

    ],
    "as_actor": [

    ]
  },
  {
    "id": 5,
    "first_name": "Maricruz",
    "last_name": "Ankunding",
    "as_director": [

    ],
    "as_producer": [

    ],
    "as_actor": [

    ]
  },
  {
    "id": 6,
    "first_name": "Clarice",
    "last_name": "Hagenes",
    "as_director": [

    ],
    "as_producer": [

    ],
    "as_actor": [

    ]
  },
  {
    "id": 7,
    "first_name": "Necole",
    "last_name": "Kris",
    "as_director": [

    ],
    "as_producer": [

    ],
    "as_actor": [

    ]
  },
  {
    "id": 8,
    "first_name": "Irvin",
    "last_name": "Bruen",
    "as_director": [

    ],
    "as_producer": [

    ],
    "as_actor": [

    ]
  },
  {
    "id": 9,
    "first_name": "Moira",
    "last_name": "Upton",
    "as_director": [

    ],
    "as_producer": [

    ],
    "as_actor": [

    ]
  }
]
```

## POST /people

### Description:
Method Create - creates a person

### Request headers:
```json
{
  "AUTHORIZATION": "user_token",
  "Content-Type": "application/json",
  "Accept": "application/json"
}
```

### Path parameters:
```json
{
}
```

### Body Parameters:
```json
{
  "person": {
    "first_name": "Matias",
    "last_name": "Maglia",
    "roles_attributes": [
      {
        "role_type": "actor",
        "movie_id": "11"
      }
    ]
  }
}
```

### Response status:
201

### Response headers:
```json
{
  "X-Frame-Options": "SAMEORIGIN",
  "X-XSS-Protection": "1; mode=block",
  "X-Content-Type-Options": "nosniff",
  "X-Download-Options": "noopen",
  "X-Permitted-Cross-Domain-Policies": "none",
  "Referrer-Policy": "strict-origin-when-cross-origin",
  "Content-Type": "application/json; charset=utf-8",
  "access-token": " ",
  "token-type": "Bearer",
  "client": "YAN-o1JbKQxR7vl1zNJXoQ",
  "expiry": " ",
  "uid": "admin@mail.com"
}
```

### Response body:
```json
{
  "id": 10,
  "first_name": "Matias",
  "last_name": "Maglia",
  "as_director": [

  ],
  "as_producer": [

  ],
  "as_actor": [
    {
      "id": 11,
      "title": "Fasten your seatbelts. It's going to be a bumpy night.",
      "release": "2018-11-26",
      "created_at": "2018-11-27T00:40:21.249Z",
      "updated_at": "2018-11-27T00:40:21.249Z"
    }
  ]
}
```

## PUT /people/11

### Description:
Method Update -updates a person

### Request headers:
```json
{
  "AUTHORIZATION": "user_token",
  "Content-Type": "application/json",
  "Accept": "application/json"
}
```

### Path parameters:
```json
{
  "id": "11"
}
```

### Body Parameters:
```json
{
  "person": {
    "first_name": "Nombre editado",
    "last_name": "Gleichner",
    "roles_attributes": [
      {
        "id": "5",
        "role_type": "actor",
        "movie_id": "12"
      }
    ]
  },
  "id": "11"
}
```

### Response status:
200

### Response headers:
```json
{
  "X-Frame-Options": "SAMEORIGIN",
  "X-XSS-Protection": "1; mode=block",
  "X-Content-Type-Options": "nosniff",
  "X-Download-Options": "noopen",
  "X-Permitted-Cross-Domain-Policies": "none",
  "Referrer-Policy": "strict-origin-when-cross-origin",
  "Content-Type": "application/json; charset=utf-8",
  "access-token": " ",
  "token-type": "Bearer",
  "client": "nsifQmD3rgShS_VO5PUw-w",
  "expiry": " ",
  "uid": "admin@mail.com"
}
```

### Response body:
```json
{
  "id": 11,
  "first_name": "Nombre editado",
  "last_name": "Gleichner",
  "as_director": [

  ],
  "as_producer": [

  ],
  "as_actor": [
    {
      "id": 12,
      "title": "Here's looking at you, kid.",
      "release": "2018-11-26",
      "created_at": "2018-11-27T00:40:21.402Z",
      "updated_at": "2018-11-27T00:40:21.402Z"
    }
  ]
}
```

