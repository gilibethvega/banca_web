require "application_system_test_case"

class VisaTypesTest < ApplicationSystemTestCase
  setup do
    @visa_type = visa_types(:one)
  end

  test "visiting the index" do
    visit visa_types_url
    assert_selector "h1", text: "Visa Types"
  end

  test "creating a Visa type" do
    visit visa_types_url
    click_on "New Visa Type"

    click_on "Create Visa type"

    assert_text "Visa type was successfully created"
    click_on "Back"
  end

  test "updating a Visa type" do
    visit visa_types_url
    click_on "Edit", match: :first

    click_on "Update Visa type"

    assert_text "Visa type was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa type" do
    visit visa_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa type was successfully destroyed"
  end
end
