require "sinatra"
require "sinatra/json"
require "json"
require "sinatra/reloader" if development?
require "pry" if development? || test?

set :bind, '0.0.0.0'  # bind to all interfaces
set :public_folder, File.join(File.dirname(__FILE__), "public")

CURRENT_FILE_PATH = File.dirname(__FILE__)

def read_tasks
  JSON.parse(File.read("tasks.json"))
end

before do
  headers({ "Access-Control-Allow-Origin" => "*" })
end

get "/" do
  erb :home
end

get "/api/v1/tasks" do
  questions = read_tasks

  content_type :json
  json questions
end

post "/api/v1/tasks" do
  current_tasks = read_tasks

  task = JSON.parse(request.body.read)
  task["id"] = current_tasks.last["id"] + 1

  content_type :json
  if task["title"] && task["title"] != ''
    current_tasks << task
    File.write("tasks.json", JSON.pretty_generate(current_tasks))

    status 201
    json task
  else
    status 422
    errors = { "errors" => ["Title can't be blank"] }
    json errors
  end
end
