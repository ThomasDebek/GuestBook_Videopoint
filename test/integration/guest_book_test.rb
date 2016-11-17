class GuestBookTest < ActionDispatch::IntegrationTest
  setup do
  end

  test "creates a post" do
    visit posts_path
    click_link "Dodaj wlsny wpis juz teraz"
    fill_in "Autor", with: "Testowy Autor"
    fill_in "Tresc", with: "Testowa treść"
    click_button "Dodaj wpis"

    assert page.has_content?("Dziękujemy za wpis"), "expected a flash message"
    assert page.has_content?("Testowy Author")
    assert page.has_content?("Testowa treść")
  end
end
