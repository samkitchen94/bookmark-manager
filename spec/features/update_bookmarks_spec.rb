feature "update bookmarks" do
  scenario "it lets user update a bookmarks" do
    bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/bookmarks')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    click_button('Update')
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"
    fill_in('url', with: 'http://www.makersacademy.com')
    fill_in('title', with: 'Makers Academy School')
    expect(page).to have_link('Makers Academy School', href: 'http://www.makersacademy.com')
  end
end
