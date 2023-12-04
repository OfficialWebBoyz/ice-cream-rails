# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Daisy ui installation
In order to get daisy ui to be registered with the tailwind config we need to import js packages from node modules in the [asset pipeline](https://guides.rubyonrails.org/asset_pipeline.html). By precompiling node modules inside of the Rails application config `config/initializers/assets.rb` we can use npm packages like normal. See [article](https://medium.com/@elicloudh/rails-importing-javascript-packages-from-node-modules-with-assets-pipeline-without-webpacker-98d985b22cea) for installation instructions.