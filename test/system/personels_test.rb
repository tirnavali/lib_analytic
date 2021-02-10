require "application_system_test_case"

class PersonelsTest < ApplicationSystemTestCase
  setup do
    @personel = personels(:one)
  end

  test "visiting the index" do
    visit personels_url
    assert_selector "h1", text: "Personels"
  end

  test "creating a Personel" do
    visit personels_url
    click_on "New Personel"

    fill_in "Name", with: @personel.name
    fill_in "Surname", with: @personel.surname
    click_on "Create Personel"

    assert_text "Personel was successfully created"
    click_on "Back"
  end

  test "updating a Personel" do
    visit personels_url
    click_on "Edit", match: :first

    fill_in "Name", with: @personel.name
    fill_in "Surname", with: @personel.surname
    click_on "Update Personel"

    assert_text "Personel was successfully updated"
    click_on "Back"
  end

  test "destroying a Personel" do
    visit personels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personel was successfully destroyed"
  end
end
