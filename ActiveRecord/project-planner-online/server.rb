require 'sinatra'
require 'sinatra/flash'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require "pry" if development? || test?

set :bind, '0.0.0.0'

configure do
  set :views, 'app/views'
end

enable :sessions

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  @projects = Project.all

  erb :index
end

get '/projects/:id' do
  @projects = Project.all
  @users = User.all
  @tasks = Task.all
  @slaves = []
  assigned = []
  @game_plan = []

  @projects.each do |project|
    if project.id === params[:id].to_i
      @show = project
    end
  end

  @users.each do |user|
    if user.projects.length > 0 && user.projects.include?(@show)
      @slaves << user
    end
  end

    @show.tasks.each do |task|
      @slaves.each do |slave|
        if task.user_id && task.user_id === slave.id
          slave_name = "#{slave.first_name} #{slave.last_name}"
          @game_plan << { task: task.name, description: task.description, slave: slave_name, due_date: task.due_date }
        end
      end
    end


  erb :project_show
end
