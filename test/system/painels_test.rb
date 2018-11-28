require "application_system_test_case"

class PainelsTest < ApplicationSystemTestCase
  setup do
    @painel = painels(:one)
  end

  test "visiting the index" do
    visit painels_url
    assert_selector "h1", text: "Painels"
  end

  test "creating a Painel" do
    visit painels_url
    click_on "New Painel"

    fill_in "Painel", with: @painel.painel
    click_on "Create Painel"

    assert_text "Painel was successfully created"
    click_on "Back"
  end

  test "updating a Painel" do
    visit painels_url
    click_on "Edit", match: :first

    fill_in "Painel", with: @painel.painel
    click_on "Update Painel"

    assert_text "Painel was successfully updated"
    click_on "Back"
  end

  test "destroying a Painel" do
    visit painels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Painel was successfully destroyed"
  end
end
