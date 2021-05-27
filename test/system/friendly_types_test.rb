require "application_system_test_case"

class FriendlyTypesTest < ApplicationSystemTestCase
  setup do
    @friendly_type = friendly_types(:one)
  end

  test "visiting the index" do
    visit friendly_types_url
    assert_selector "h1", text: "Friendly Types"
  end

  test "creating a Friendly type" do
    visit friendly_types_url
    click_on "New Friendly Type"

    fill_in "Image", with: @friendly_type.image
    fill_in "Name", with: @friendly_type.name
    fill_in "User", with: @friendly_type.user_id
    click_on "Create Friendly type"

    assert_text "Friendly type was successfully created"
    click_on "Back"
  end

  test "updating a Friendly type" do
    visit friendly_types_url
    click_on "Edit", match: :first

    fill_in "Image", with: @friendly_type.image
    fill_in "Name", with: @friendly_type.name
    fill_in "User", with: @friendly_type.user_id
    click_on "Update Friendly type"

    assert_text "Friendly type was successfully updated"
    click_on "Back"
  end

  test "destroying a Friendly type" do
    visit friendly_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friendly type was successfully destroyed"
  end
end
