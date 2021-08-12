feature 'add bookmark' do
  scenario 'adding a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'www.google.co.uk')
    click_button('Submit')
    expect(page).to have_content 'www.google.co.uk'
  end
end