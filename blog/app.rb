require 'sinatra'
require 'sinatra/reloader'
# require 'config/environments'

# require 'blog/models/blog'
current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

# set :database_file, 'config/database.yml'
# configure :development do
#   set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'sinatraBlog', pool: 2, username: 'postgres', password: nil }
# end


get '/' do
  erb :new_blog
end

post '/create' do
  @new = params['new']
  puts "***************", @new
  @blog = Blog.create(content: @new)
end
