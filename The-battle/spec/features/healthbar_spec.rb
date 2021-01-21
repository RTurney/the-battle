
feature 'health bar' do
  scenario 'shows player 2 health' do
    visit '/'
    fill_in :player_1, with: "Jack the warrior"
    fill_in :player_2, with: "Rich the Coward"
    click_button 'Submit'
    expect(page).to have_content "Rich the Coward: 50/50"
  end
end
