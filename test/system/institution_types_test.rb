require "application_system_test_case"

class InstitutionTypesTest < ApplicationSystemTestCase
  setup do
    @institution_type = institution_types(:one)
  end

  test "visiting the index" do
    visit institution_types_url
    assert_selector "h1", text: "Institution Types"
  end

  test "creating a Institution type" do
    visit institution_types_url
    click_on "New Institution Type"

    fill_in "Name", with: @institution_type.name
    click_on "Create Institution type"

    assert_text "Institution type was successfully created"
    click_on "Back"
  end

  test "updating a Institution type" do
    visit institution_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @institution_type.name
    click_on "Update Institution type"

    assert_text "Institution type was successfully updated"
    click_on "Back"
  end

  test "destroying a Institution type" do
    visit institution_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Institution type was successfully destroyed"
  end
end
