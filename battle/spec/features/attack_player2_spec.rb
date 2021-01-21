feature ' attack player' do
  scenario 'attack player 2 and confirmation' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Jack the Warrior attacked Rich the Coward"
  end
end
