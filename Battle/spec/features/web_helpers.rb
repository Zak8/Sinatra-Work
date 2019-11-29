def sign_in_and_play(playerOne, playerTwo)
    visit "/"
    fill_in("playerOne", with: playerOne)
    fill_in("playerTwo", with: playerTwo)
    click_button("Submit")
end