require 'sinatra'
require 'active_record'
require_relative './app/models/cat'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
                                        database: 'cats')

get '/' do
  @cats = Cat.all

  erb :index
end

post '/create/new' do
  img_height = rand(200..1500)
  img_width = rand(200..1500)
  @cat = Cat.create(name: params[:name], img_height: img_height, img_width: img_width)

  @cats = Cat.all

  erb :_show_kitties, layout: false
end

put '/cat/:id/update' do
  @cat = Cat.find_by_id(params[:id]).update_attributes(name: params[:name])
  @cats = Cat.all

  erb :_show_kitties, layout: false
end

delete '/cat/:id/delete' do
  Cat.find_by_id(params[:id]).destroy

  erb :_show_kitties, layout: false
end