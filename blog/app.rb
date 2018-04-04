require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :new_blog
end

post '/create' do
  @new = params['new']
  puts "***************", @new


end
