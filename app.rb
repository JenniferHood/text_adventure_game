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

get('/b1') do
  @player_name= User.all().name()
  erb(:b1)
end

get('/b2') do
  @player_name= User.all().name()
  erb(:b2)
end

get('/b3') do
  @player_name= User.all().name()
  erb(:b3)
end

get('/b4') do
  @player_name= User.all().name()
  erb(:b4)
end

get('/b5') do
  @player_name= User.all().name()
  erb(:b5)
end
