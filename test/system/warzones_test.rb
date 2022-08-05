require "application_system_test_case"

class WarzonesTest < ApplicationSystemTestCase
  setup do
    @warzone = warzones(:one)
  end

  test "visiting the index" do
    visit warzones_url
    assert_selector "h1", text: "Warzones"
  end

  test "creating a Warzone" do
    visit warzones_url
    click_on "New Warzone"

    fill_in "Description", with: @warzone.description
    fill_in "Name", with: @warzone.name
    click_on "Create Warzone"

    assert_text "Warzone was successfully created"
    click_on "Back"
  end

  test "updating a Warzone" do
    visit warzones_url
    click_on "Edit", match: :first

    fill_in "Description", with: @warzone.description
    fill_in "Name", with: @warzone.name
    click_on "Update Warzone"

    assert_text "Warzone was successfully updated"
    click_on "Back"
  end

  test "destroying a Warzone" do
    visit warzones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warzone was successfully destroyed"
  end
end
