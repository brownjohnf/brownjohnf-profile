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

get '/download/word' do
  file = File.join(settings.public_folder, 'JohnBrown-Resume.docx')
  send_file(file, :disposition => 'attachment', :file_name => File.basename(file))
end

=begin
get '/download/libreoffice' do
  file = File.join(settings.public_folder, 'JohnBrown-Resume.odf')
  send_file(file, :disposition => 'attachment', :file_name => File.basename(file))
end
=end
