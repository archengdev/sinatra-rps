require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

choices = ["rock", "paper", "scissors"]

get("/scissors") do
  choice = choices.sample
  @computer = "They played #{choice}!"

  if choice == "rock"
    res = "lost"
  elsif choice == "paper"
    res = "won"
  else
    res = "tied"
  end
  
  @result = "We #{res}!"
  erb(:scissors)
end

get("/rock") do
  choice = choices.sample
  @computer = "They played #{choice}!"

  if choice == "paper"
    res = "lost"
  elsif choice == "scissors"
    res = "won"
  else
    res = "tied"
  end
  
  @result = "We #{res}!"

  erb(:rock)
end

get("/paper") do
  choice = choices.sample
  @computer = "They played #{choice}!"

  if choice == "scissors"
    res = "lost"
  elsif choice == "rock"
    res = "won"
  else
    res = "tied"
  end
  
  @result = "We #{res}!"
  erb(:paper)
end
