def sign_in_and_play
    visit '/'
    fill_in :player_1, with: "Jack the warrior"
    fill_in :player_2, with: "Rich the Coward"
    click_button 'Submit'
end