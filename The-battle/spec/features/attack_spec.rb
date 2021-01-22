feature 'attacks' do
    scenario 'player 1 attacks player 2' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content("Jack the warrior attacked Rich the Coward")
    end

    scenario 'reduce the other players health' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content("Rich the Coward's health is now 40/50")
    end
end
