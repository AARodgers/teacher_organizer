Git/GitHub Notes:
1. Git: make new repo with readme and license, fork and clone, in terminal under the correct directory do: git clone 'link from github', cd into that file and code . to start coding in VS code




APP Notes:
(Order to creating an app: database, models, controllers, views)
1. 'bundle init' to create Gem file, add appropriate gems
- run bundle install to load all gems once added

2. make config folder and add an environment.rb file to it
    - add adapter code to environment file:

3. make a config.ru file 'touch config.ru'

4.make db folder in top directory

5. make Rakefile: 'touch Rakefile'
    - add code needed:
    ENV['SINATRA_ENV'] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'a console'
task :console do
    Pry.start
end

6. 
