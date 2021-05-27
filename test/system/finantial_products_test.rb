require "application_system_test_case"

class FinantialProductsTest < ApplicationSystemTestCase
  setup do
    @finantial_product = finantial_products(:one)
  end

  test "visiting the index" do
    visit finantial_products_url
    assert_selector "h1", text: "Finantial Products"
  end

  test "creating a Finantial product" do
    visit finantial_products_url
    click_on "New Finantial Product"

    fill_in "Description", with: @finantial_product.description
    fill_in "Image", with: @finantial_product.image
    fill_in "Institution type", with: @finantial_product.institution_type_id
    fill_in "Name", with: @finantial_product.name
    fill_in "Product type", with: @finantial_product.product_type_id
    fill_in "Url", with: @finantial_product.url
    fill_in "Visibility", with: @finantial_product.visibility
    click_on "Create Finantial product"

    assert_text "Finantial product was successfully created"
    click_on "Back"
  end

  test "updating a Finantial product" do
    visit finantial_products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @finantial_product.description
    fill_in "Image", with: @finantial_product.image
    fill_in "Institution type", with: @finantial_product.institution_type_id
    fill_in "Name", with: @finantial_product.name
    fill_in "Product type", with: @finantial_product.product_type_id
    fill_in "Url", with: @finantial_product.url
    fill_in "Visibility", with: @finantial_product.visibility
    click_on "Update Finantial product"

    assert_text "Finantial product was successfully updated"
    click_on "Back"
  end

  test "destroying a Finantial product" do
    visit finantial_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Finantial product was successfully destroyed"
  end
end
