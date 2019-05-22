feature "delete bookmarks" do
  scenario "it lets user delete a bookmarks" do
    visit('/bookmarks/new')
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/bookmarks/delete')
    fill_in('delete', with: 'Makers Academy')
    click_button('Submit')
    expect(page).to_not have_content('Makers Academy')
  end
end
