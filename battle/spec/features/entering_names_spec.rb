
feature 'adds player names to game ' do
  scenario 'to start a game ' do
    sign_in_and_play
    expect(page).to have_content "Jack the Warrior vs Rich the Coward"
  end
end
