require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'lets us view all bookmarks' do
      expect(Bookmark.all).to include('www.google.com')
      expect(Bookmark.all).to include('www.imgur.com')
      expect(Bookmark.all).to include('www.natgeo.co.uk')
    end 
  end
end
