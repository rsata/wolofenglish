
# use bundler
require 'rubygems'
require 'bundler/setup'
# load all of the gems in the gemfile
Bundler.require
require './models/VocabItem'

# require './models/TodoItem'

if ENV['DATABASE_URL']
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
else
  ActiveRecord::Base.establish_connection(
    :adapter  => 'sqlite3',
    :database => 'db/development.db',
    :encoding => 'utf8'
  )
end



get '/' do
  @vocab = VocabItem.all
  erb :index
end

#create items
post '/' do
  item = VocabItem.create(wolof:params[:wolof], sound:params[:sound], english:params[:english])
  redirect "/"
end

#delete items
post '/delete/:id' do
  VocabItem.find(params[:id]).destroy
  redirect '/'
end

post '/edit/:id' do
  VocabItem.update(params[:id])
  redirect '/'
end