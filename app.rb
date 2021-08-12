require 'sinatra/base'
require 'sinatra/reloader'

class Bookmark < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "this is a test page that works hopefully"
  end

  get '/bookmarks' do
    # @bookmarks = [
    #   "http://www.google.com",
    #   "http://www.destroyallsoftware.com",
    #   "http://www.makersacademy.com"
    # ]
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end 

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
  end

  run! if app_file == $0

end