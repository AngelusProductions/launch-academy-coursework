require 'sinatra'

require "pry" if development? || test?
require "sinatra/reloader" if development?


set :bind, '0.0.0.0'

get '/' do
  @ingredients = File.readlines('ingredients.txt')
  erb :index
end

post '/ingredient' do
  ingredient = params['ingredient']
  binding.pry
  File.open('ingredients.txt', 'a') do |file|
    file.puts(ingredient)
  end

  redirect '/'
end
