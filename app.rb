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

get('/city') do
  @player_name = User.all().name()
  erb(:city)
end

get('/c1') do
  @player_name = User.all().name()
  erb(:c1)
end

get('/c2') do
  @player_name = User.all().name()
  erb(:c2)
end

get('/c3') do
  @player_name = User.all().name()
  erb(:c3)
end

get('/c4') do
  @player_name = User.all().name()
  erb(:c4)
end

get('/c5') do
  @player_name = User.all().name()
  erb(:c5)
end

get('/c6') do
  @player_name = User.all().name()
  erb(:c6)
end

get('/c7') do
  @player_name = User.all().name()
  erb(:c7)
end

get('/c8') do
  @player_name = User.all().name()
  erb(:c8)
end

get('/c9') do
  @player_name = User.all().name()
  erb(:c9)
end

get('/c10') do
  @player_name = User.all().name()
  erb(:c10)
end

get('/d1') do
  @player_name = User.all().name()
  erb(:d1)
end

get('/d2') do
  @player_name = User.all().name()
  erb(:d2)
end

get('/d3') do
  @player_name = User.all().name()
  erb(:d3)
end

get('/d4') do
  @player_name = User.all().name()
  erb(:d4)
end

get('/d5') do
  @player_name = User.all().name()
  erb(:d5)
end

get('/d6') do
  @player_name = User.all().name()
  erb(:d6)
end

