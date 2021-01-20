
feature 'adds player names to game ' do
  scenario 'to start a game ' do
    visit '/'
    fill_in :player_1, with: "Jack the warrior"
    fill_in :player_2, with: "Rich the Coward"
    click_button 'Submit'
    expect(page).to have_content "Jack the warrior vs Rich the Coward"
  end
end
