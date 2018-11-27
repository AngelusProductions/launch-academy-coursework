require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require 'sinatra/flash'
require "pry" if development? || test?

enable :sessions

set :bind, '0.0.0.0'  # bind to all interfaces

configure do
  set :views, 'app/views'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  @recipes = Recipe.all
  @comments = Comment.all
  
  erb :index
end
