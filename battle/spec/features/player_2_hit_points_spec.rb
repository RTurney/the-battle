feature 'shows hit points' do
  scenario 'show player 2 hit points' do
  sign_in_and_play
    expect(page).to have_content "Rich the Coward, HP: 100"
  end
end
