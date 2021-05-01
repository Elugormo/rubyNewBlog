# Test Assignment


Developed completed Ruby Blog with authentication and other different features

Checklist
- Getting started 5pts
- Authentication 2pts
- Category filter 2pts
- Search by title 2pts
- Pagination 2pts
- Uploading pictures 2pts
- Docker-compose 3pts
- Heroku deployment 3pts
-  = 21 pts

## Used Gems
```ruby
ruby '2.6.3'

gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'sidekiq', '~>6.0.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
# gem 'bcrypt', '~> 3.1.7'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap-sass'
gem 'jquery'
gem 'will_paginate-bootstrap'
gem 'will_paginate', '~> 3.1.0'
gem 'devise'
gem 'cancancan', '~> 1.10'
gem 'rolify'
gem 'coffee-script-source', '~> 1.11', '>= 1.11.1'
# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'pry-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

```

## Core Technologies
- Ruby on Rails (main framework)
- PostgreSQL (for database)
- Device (for authentication)
- Bootstrap (app design)


# Installation

### 1: Requirements
You must have Docker and Docker Compose on your machine.

### 2: 'Clone & Run' the project
You should clone the project into a conveniently-named directory, as this repo's name is big enough to make typing docker/compose commands tiresome, should the need arise:
```bash
git clone git@github.com:Elugormo/rubyNewBlog.git rubyBlog 
  && cd rubyBlog \
  && docker-compose up -d  \
  && docker-compose logs -f
```
Watch it as it starts all the containers, and how the app database is initialized upon the first run before starting the rails web server.

### 3: Go to http://localhost:3000 and you should be up and running!

# Check ready-to-test dev version deployed to Heroku at:
###   https://peaceful-savannah-89184.herokuapp.com/
