require('sinatra')
require('sinatra/reloader')
require('./lib/user')

get('/') do
  erb(:index)
end

get ('/user') do
  @player = params.fetch('user').name()
  @player.save()
  erb(:user)
end
