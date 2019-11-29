feature "test_infrastructure" do
    scenario "test the infrastructure is working." do
        visit '/'
        expect(page).to have_content "Test Infrastructure."
    end
end