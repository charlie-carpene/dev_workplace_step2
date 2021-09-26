require "application_system_test_case"

class FrenchForeignersTest < ApplicationSystemTestCase
  setup do
    @french_foreigner = french_foreigners(:one)
  end

  test "visiting the index" do
    visit french_foreigners_url
    assert_selector "h1", text: "French Foreigners"
  end

  test "creating a French foreigner" do
    visit french_foreigners_url
    click_on "New French Foreigner"

    fill_in "Country", with: @french_foreigner.country
    fill_in "Nbr french", with: @french_foreigner.nbr_french
    fill_in "Year", with: @french_foreigner.year
    click_on "Create French foreigner"

    assert_text "French foreigner was successfully created"
    click_on "Back"
  end

  test "updating a French foreigner" do
    visit french_foreigners_url
    click_on "Edit", match: :first

    fill_in "Country", with: @french_foreigner.country
    fill_in "Nbr french", with: @french_foreigner.nbr_french
    fill_in "Year", with: @french_foreigner.year
    click_on "Update French foreigner"

    assert_text "French foreigner was successfully updated"
    click_on "Back"
  end

  test "destroying a French foreigner" do
    visit french_foreigners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "French foreigner was successfully destroyed"
  end
end
