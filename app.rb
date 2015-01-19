
# use bundler
require 'rubygems'
require 'bundler/setup'
# load all of the gems in the gemfile
Bundler.require
require './models/VocabListItem'

# require './models/TodoItem'

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'db/development.db',
  :encoding => 'utf8'
)



get '/' do
  @vocab = VocabListItem.all
  erb :index
end

#to create items
post '/' do
  item = VocabListItem.create(wolof: params[:wolof], english: params[:english], kind: params[:kind])
  redirect "/", notice:"success!"
end


#to delete items
post '/delete/:id' do
    VocabListItem.find(params[:id]).destroy
    redirect '/'
end
