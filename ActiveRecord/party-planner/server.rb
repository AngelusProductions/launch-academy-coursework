require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/flash'
require "pry" if development? || test?
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

configure do
  set :views, 'app/views'
end

enable :sessions

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  redirect '/parties'
end

get '/parties' do
  @parties = Party.all

  erb :index
end

get '/parties/:id' do
  @parties = Party.all
  @invites = Invite.all
  @friends = Friend.all
  @invited = []

  @invites.each do |invite|
    if invite.party_id === params[:id].to_i
      @invited << Friend.find(invite.friend_id)
    end
  end

  erb :party_show
end

post '/parties/:id' do
  @first_name = params[:name].split[0]
  @last_name = params[:name].split[1]
  friends = Friend.all

  invitee = friends.find_by(first_name: @first_name, last_name: @last_name)

  Invite.create(party_id: params[:id], friend_id: invitee.id)

  flash[:notice] = "SUCCESS"
  redirect "/parties/#{params[:id]}"

end

get '/new' do
  erb :new_party
end

post '/new' do
  @name = params[:name]
  flash[:name] = @name
  @location = params[:location]
  flash[:location] = @location
  @description = params[:description]
  flash[:description] = @description
  @parties = Party.all

  new_party = Party.new(name: @name, location: @location, description: @description)

  if new_party.save
    flash[:notice] = "SUCCESS"
    redirect "/parties/#{@parties.last.id}"
  else
    flash[:notice] = "FAILURE: #{new_party.errors.full_messages.join(", ").upcase}"
    redirect "/new"
  end
end

get '/friends' do
  erb :friends
end

get '/friends/new' do
  erb :new_friend
end

post '/friends/new' do
  @first_name = params[:first_name]
  flash[:first_name] = @first_name
  @last_name = params[:last_name]
  flash[:last_name] = @last_name
  @friends = Friend.all

  new_friend = Friend.new(first_name: @first_name, last_name: @last_name)

  if new_friend.save
    flash[:notice] = "SUCCESS"
    redirect "/friends"
  else
    flash[:notice] = "FAILURE: #{new_friend.errors.full_messages.join(", ").upcase}"
    redirect '/friends/new'
  end

end

get '/parties/:id/edit' do
  @parties = Party.all

  @parties.each do |party|
    if party.id === params[:id]
      @to_edit = party
    end
  end

  binding.pry


  @name = params[:name]
  flash[:name] = @name
  @location = params[:location]
  flash[:location] = @location
  @description = params[:description]
  flash[:description] = @description



  erb :edit_party
end
