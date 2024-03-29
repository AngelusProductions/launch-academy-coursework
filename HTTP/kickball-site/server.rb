require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/league"

set :bind, '0.0.0.0'

get "/" do
  redirect '/teams'
end

get "/teams" do
  @league = League.new
  erb :teams
end

get "/teams/:team_name" do
  @league = League.new
  erb :team_name
end
