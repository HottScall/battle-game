feature "Enter names" do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content 'Player 1 vs Player 2'
  end
end


feature "View hit points" do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 60HP'
  end
end
