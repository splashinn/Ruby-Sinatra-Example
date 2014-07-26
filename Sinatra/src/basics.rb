# basics.rb
# splashinn
# NOTE: In Ruby 1.9 and later, there is no need for the require 'rubygems'

require 'rubygems'
require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/about' do
  "A little about me"
end

get '/hello/:name/:city' do
  "Hello there, #{params[:name]} from #{params[:city]}."
end

get '/more/*' do
  params[:splat]
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  status 404
  'not found'
end
