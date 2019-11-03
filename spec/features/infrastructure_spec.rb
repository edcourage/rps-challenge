feature "local output tests" do
  scenario "player can input name into form and it is displayed" do
    visit '/'
    expect(page).to have_text "Rock Paper Scissors!"
  end

  scenario "player can input name into form and it is displayed" do
    submit_player_info
    expect(page).to have_text "Lets play Bea!"
  end

  scenario "player selects rock and wins" do
    srand(3)
    submit_player_info
    click_on "Rock"
    expect(page).to have_text "AI hand: Scissors"
    expect(page).to have_text "You Win!"

  end

  scenario "player selects Scissors and draws" do
    srand(3)
    submit_player_info
    click_on "Scissors"
    expect(page).to have_text "AI hand: Scissors"
    expect(page).to have_text "Draw!"
  end

  scenario "player selects Paper you lose" do
    srand(3)
    submit_player_info
    click_on "Paper"
    expect(page).to have_text "AI hand: Scissors"
    expect(page).to have_text "You Lose!"
  end



end