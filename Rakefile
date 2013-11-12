require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb cats`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb cats`
  end
end
