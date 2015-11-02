require 'sinatra'

set :layout => :layout

get '/' do
  haml :resume
end

get '/portfolio' do
  haml :portfolio
end

get '/contact' do
  haml :contact
end

get '/download/pdf' do
  file = File.join(settings.public_folder, 'JohnBrown-Resume.pdf')
  send_file(file, :disposition => 'attachment', :file_name => File.basename(file))
end

