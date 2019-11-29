feature "test_infrastructure" do
  scenario "test the infrastructure is working." do
    visit '/'
    expect(page).to have_content "Test Infrastructure."
  end
end

feature "accepts home page" do
  scenario "You see the names once they are entered" do
    sign_in_and_play("Michael", "David")
    expect(page).to have_content "Michael versus David"
  end

  scenario "You see the names once they are entered" do
    sign_in_and_play("Jack", "Bill")
    expect(page).to have_content "Jack versus Bill"
  end

  scenario "You see the health of your opponent" do
    sign_in_and_play("Michael", "David")
    expect(page).to have_content "PlayerTwo hit points: 100"
  end

  scenario "You see the health of your opponent" do
    sign_in_and_play("Michael", "David")
    click_button('Attack')
    expect(page).to have_content "PlayerOne attacked PlayerTwo"
  end
end

