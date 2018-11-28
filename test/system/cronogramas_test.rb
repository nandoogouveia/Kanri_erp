require "application_system_test_case"

class CronogramasTest < ApplicationSystemTestCase
  setup do
    @cronograma = cronogramas(:one)
  end

  test "visiting the index" do
    visit cronogramas_url
    assert_selector "h1", text: "Cronogramas"
  end

  test "creating a Cronograma" do
    visit cronogramas_url
    click_on "New Cronograma"

    fill_in "Calendario", with: @cronograma.calendario
    click_on "Create Cronograma"

    assert_text "Cronograma was successfully created"
    click_on "Back"
  end

  test "updating a Cronograma" do
    visit cronogramas_url
    click_on "Edit", match: :first

    fill_in "Calendario", with: @cronograma.calendario
    click_on "Update Cronograma"

    assert_text "Cronograma was successfully updated"
    click_on "Back"
  end

  test "destroying a Cronograma" do
    visit cronogramas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cronograma was successfully destroyed"
  end
end
