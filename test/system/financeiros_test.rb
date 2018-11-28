require "application_system_test_case"

class FinanceirosTest < ApplicationSystemTestCase
  setup do
    @financeiro = financeiros(:one)
  end

  test "visiting the index" do
    visit financeiros_url
    assert_selector "h1", text: "Financeiros"
  end

  test "creating a Financeiro" do
    visit financeiros_url
    click_on "New Financeiro"

    fill_in "Financial", with: @financeiro.financial
    click_on "Create Financeiro"

    assert_text "Financeiro was successfully created"
    click_on "Back"
  end

  test "updating a Financeiro" do
    visit financeiros_url
    click_on "Edit", match: :first

    fill_in "Financial", with: @financeiro.financial
    click_on "Update Financeiro"

    assert_text "Financeiro was successfully updated"
    click_on "Back"
  end

  test "destroying a Financeiro" do
    visit financeiros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financeiro was successfully destroyed"
  end
end
