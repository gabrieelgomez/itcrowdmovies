# README

Cinema Library is an API to serve detailed information about Movies, people who participated and their role in each one.

#### List of most important libraries(gems) used:

* Postgresql as database, gem 'pg'

* Devise Token Auth for authentication, gem 'devise_token_auth'

* Active Model Serializers for Json formats, gem 'active_model_serializers'

* Rack-CORS for cross origin, gem 'rack-cors'

* Faker to generate random data, gem 'faker'

* Factory Bot to create lists of models faster, gem 'factory_bot_rails'

* Database Cleaner to clean test database for each test executed, gem 'database_cleaner'

* Dictum to document endpoint based on test, gem 'dictum'

* Rubocop to keep good guide style, gem 'rubocop'

### IMPORTANT

to **register** an user to make request use this endpoint:
- POST to `https://cinemalibrary.herokuapp.com/auth` with fields `email`, `password` and
`password_confirmation` as minimum to register.

 #### How to log-in
 Using the route `https://cinemalibrary.herokuapp.com/auth/sign_in` you need to send the following fields in the body in case that you want yo use the default register user:
  - email: `admin@mail.com`
  - password: `12345678`

from response header you have to copy three fields `access-token`, `client` and `uid` in headers
for every create or update request in order to make authenticated request.

e.g:

#### Response headers:
```json
{
  "Content-Type": "application/json; charset=utf-8",
  "access-token": "lUcAcRJi9VNZVM5PsL3aWA",
  "client": "OnSypyI9CJnOhHCY-C1yOw",
  "uid": "admin@mail.com"
}
```
Documentation Endpoints [here](docs/Documentation.md)