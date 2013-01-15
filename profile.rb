require 'sinatra'

set :layout => :layout

get '/' do
  haml :resume
end

get '/portfolio' do
  haml :portfolio
end
