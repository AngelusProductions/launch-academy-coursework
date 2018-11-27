require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require "sinatra/reloader" if development?
require "pry" if development? || test?

set :bind, '0.0.0.0'

enable :sessions

configure do
  set :views, 'app/views'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  @contacts = Contact.all
  @found = ""
  @limit = @contacts.length

  erb :index
end

get '/contacts/:id' do
  @contacts = Contact.all

  erb :show
end

get '/contacts/new' do
  @contacts = Contact.all

  erb :new_contact
end
