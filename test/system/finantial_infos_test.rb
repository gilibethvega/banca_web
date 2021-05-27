require "application_system_test_case"

class FinantialInfosTest < ApplicationSystemTestCase
  setup do
    @finantial_info = finantial_infos(:one)
  end

  test "visiting the index" do
    visit finantial_infos_url
    assert_selector "h1", text: "Finantial Infos"
  end

  test "creating a Finantial info" do
    visit finantial_infos_url
    click_on "New Finantial Info"

    fill_in "Salary", with: @finantial_info.salary
    fill_in "Salay extra", with: @finantial_info.salay_extra
    fill_in "User", with: @finantial_info.user_id
    fill_in "Visa type", with: @finantial_info.visa_type_id
    fill_in "Working time", with: @finantial_info.working_time
    fill_in "Worker type", with: @finantial_info.worker_type_id
    click_on "Create Finantial info"

    assert_text "Finantial info was successfully created"
    click_on "Back"
  end

  test "updating a Finantial info" do
    visit finantial_infos_url
    click_on "Edit", match: :first

    fill_in "Salary", with: @finantial_info.salary
    fill_in "Salay extra", with: @finantial_info.salay_extra
    fill_in "User", with: @finantial_info.user_id
    fill_in "Visa type", with: @finantial_info.visa_type_id
    fill_in "Working time", with: @finantial_info.working_time
    fill_in "Worker type", with: @finantial_info.worker_type_id
    click_on "Update Finantial info"

    assert_text "Finantial info was successfully updated"
    click_on "Back"
  end

  test "destroying a Finantial info" do
    visit finantial_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Finantial info was successfully destroyed"
  end
end
