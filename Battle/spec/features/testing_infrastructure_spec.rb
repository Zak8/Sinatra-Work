feature "test_infrastructure" do
    scenario "test the infrastructure is working." do
        visit '/'
        expect(page).to have_content "Test Infrastructure."
    end
end
feature "accepts home page" do
    scenario "You see the names once they are entered" do
        visit "/"
        fill_in("playerOne", with: "Michael")
        fill_in("playerTwo", with: "David")
        click_button("Submit")
        expect(page).to have_content "Michael versus David"
    end
    scenario "You see the names once they are entered" do
        visit "/"
        fill_in("playerOne", with: "Jack")
        fill_in("playerTwo", with: "Bill")
        click_button("Submit")
        expect(page).to have_content "Jack versus Bill"
    end
end

