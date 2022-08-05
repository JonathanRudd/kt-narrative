require "application_system_test_case"

class KillteamsTest < ApplicationSystemTestCase
  setup do
    @killteam = killteams(:one)
  end

  test "visiting the index" do
    visit killteams_url
    assert_selector "h1", text: "Killteams"
  end

  test "creating a Killteam" do
    visit killteams_url
    click_on "New Killteam"

    fill_in "Assetcap", with: @killteam.assetcap
    fill_in "Base", with: @killteam.base
    fill_in "Description", with: @killteam.description
    fill_in "Factionkeyword", with: @killteam.factionkeyword
    fill_in "Name", with: @killteam.name
    fill_in "Requisition", with: @killteam.requisition
    click_on "Create Killteam"

    assert_text "Killteam was successfully created"
    click_on "Back"
  end

  test "updating a Killteam" do
    visit killteams_url
    click_on "Edit", match: :first

    fill_in "Assetcap", with: @killteam.assetcap
    fill_in "Base", with: @killteam.base
    fill_in "Description", with: @killteam.description
    fill_in "Factionkeyword", with: @killteam.factionkeyword
    fill_in "Name", with: @killteam.name
    fill_in "Requisition", with: @killteam.requisition
    click_on "Update Killteam"

    assert_text "Killteam was successfully updated"
    click_on "Back"
  end

  test "destroying a Killteam" do
    visit killteams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Killteam was successfully destroyed"
  end
end
