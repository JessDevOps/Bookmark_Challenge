require 'sinatra/base'
require 'sinatra/reloader'

class Bookmark < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "this is a test page that work hopefully"
  end

  get '/bookmarks' do
    @bookmarks = [
      "https://airtable.com/shrJMn1quurUpejHI/tblU9M74TCpg89oGC?mode=week",
      "https://github.com/makersacademy/course/blob/main/apprenticeship_module_outlines.md"
    ]
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end 


  run! if app_file == $0

end