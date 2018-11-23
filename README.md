# TodoApp v1.0.0

This is a Todo Web Application for managing users and tasks with an authentication system using Devise Ruby Gem and a basic CRUD implementation using MVC RubyOnRails framework.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Ruby version

ruby 2.3.3 check [ruby-version file](.ruby-version) 

## System dependencies

This application runs on Rails 5.2.1, NodeJS v8.12.0, Bootstrap 4.1.3.

For reviewing dependencies, please check [Gemfile](Gemfile)

For reviewing users authentication system check [Devise documentation](https://github.com/plataformatec/devise)

For reviewing Bootstrap installation and configuration notes for Rails check [Bootstrap Ruby Gem documentation](https://www.rubydoc.info/gems/bootstrap/4.1.3)

## Configuration

This applications runs on development environment from a localhost server and port 3000, for details check [development environment file](config/environments/development.rb) and [server configuration file](config/puma.rb)

Database server configuration is defined for PostgreSQL 10.5, for modifying parameters and details check [database configuration file](config/database.yml)

## Database creation

Check if you are on project root directory and run on your console or CLI next command:
rails db:create

## Database initialization

Check if you are on project root directory and run on your console or CLI next command after database creation:
rails db:migrate

## Deployment instructions

Before database creation and initialization, check if you are on project root directory and run on your console or CLI next command for installing dependencies:
bundle install

After database creation and initialization, check if you are on project root directory and run on your console or CLI next command:
rails s

Check on your console or CLI if your localhost server is running, after that, type [localhost:3000](http://localhost:3000) on your browser and check if you can view home page.

## Routing dependencies

Please check [routes configuration file](config/routes.rb) and [routes list file](routes.txt)

You can view all routes including Devise routes, running on your console or CLI next command from project root directory:
rails routes

## Next improvements and changes

* DRY-validations integration
* Deployment on Docker container for local and cloud environment
* Deployment on Google Cloud Platform - App Engine flexible environment