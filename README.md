# README

Cinema Library is an API to serve detailed information about Movies, people who participated and their role in each one.

#### List of most important libraries(gems) used:

* Postgresql as database, gem 'pg'

* Devise Token Auth for authentication, gem 'devise_token_auth'

* Active Model Serializers for Json formats, gem 'active_model_serializers'

* Rack-CORS for cross origin, gem 'rack-cors'

* Faker to generate random data, gem 'faker'

* Factory Bot to create lists of models faster, gem 'factory_bot_rails'

### Tips

there are some random data in seeds.rb, just have to run `rails db:seed`.

e.g:

- `rails db:drop db:create db:seed`

- `rails s`

When running `db:seed` an admin user is registrated, use this user to log-in if you want.

To authenticate you need to make a request for sign-in to `localhost:3000/auth/sign_in`,
look for the credentials in headers from response to be able to make POST and PUT/PATCH requests,
fields to extract from header are `access-token`, `client`, `uid`.