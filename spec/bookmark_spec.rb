require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'lets us view all bookmarks' do
      expect(Bookmark.all).to include('http://www.google.com')
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmark.all).to include("http://www.makersacademy.com")
    end
  end
end
