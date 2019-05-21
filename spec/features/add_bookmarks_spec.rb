feature "add bookmarks" do
  scenario "it lets user add bookmarks" do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.twitter.com')
    click_button('Submit')
    expect(page).to have_content("http://www.twitter.com")
  end
end
