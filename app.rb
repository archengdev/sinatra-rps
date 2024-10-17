require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/scissors") do
  @computer = "test"
  @result = "test2"
  erb(:scissors)
end

get("/rock") do


  erb(:rock)
end

get("/paper") do


  erb(:paper)
end
