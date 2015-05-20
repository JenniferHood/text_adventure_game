require('sinatra')
require('sinatra/reloader')
require('./lib/user')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

post('/user') do
  player_name = params.fetch('user_name')
  User.new(player_name).save()
  @player_name = player_name
  erb(:user)
end

get('/carnival') do
  @player_name = User.all().name()
  erb(:carnival)
end

get('/a1') do
  @player_name = User.all().name()
  erb(:a1)
end

get('/a2') do
  @player_name = User.all().name()
  erb(:a2)
end

get('/a3') do
  @player_name = User.all().name()
  erb(:a3)
end

get('/a4') do
  @player_name = User.all().name()
  erb(:a4)
end


get('/a6') do
  @player_name = User.all().name()
  erb(:a6)
end


get('/a7') do
  @player_name = User.all().name()
  erb(:a6)
end
