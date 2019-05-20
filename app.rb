require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get('/') do
    'Bookmark Manager'
  end

  get('/bookmarks') do
    @bookmarks = [
      "www.google.com",
      "www.imgur.com",
      "www.natgeo.co.uk"
    ]
    @bookmarks.join
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
