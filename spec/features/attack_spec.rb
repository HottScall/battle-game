feature "Player 1 attacks Player 2" do
  scenario "deduct 10 HP points" do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
      expect(page).not_to have_content 'Player 2 HP 60'
      expect(page).to have_content 'Player 2 HP 50'
  end
end
