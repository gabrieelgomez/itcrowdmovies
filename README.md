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
`rails db:drop db:create db:seed`