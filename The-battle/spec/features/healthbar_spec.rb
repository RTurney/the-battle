feature 'health bar' do
  scenario 'shows player 2 health' do
    sign_in_and_play
    expect(page).to have_content "Rich the Coward: 50/50"
  end
end
