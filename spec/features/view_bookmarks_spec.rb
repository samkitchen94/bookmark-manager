feature 'viewing bookmarks' do
  scenario "it lists bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.imgur.com")
    expect(page).to have_content("www.natgeo.co.uk")
  end
end
