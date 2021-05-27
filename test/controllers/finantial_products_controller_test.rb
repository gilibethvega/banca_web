require 'test_helper'

class FinantialProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finantial_product = finantial_products(:one)
  end

  test "should get index" do
    get finantial_products_url
    assert_response :success
  end

  test "should get new" do
    get new_finantial_product_url
    assert_response :success
  end

  test "should create finantial_product" do
    assert_difference('FinantialProduct.count') do
      post finantial_products_url, params: { finantial_product: { description: @finantial_product.description, image: @finantial_product.image, institution_type_id: @finantial_product.institution_type_id, name: @finantial_product.name, product_type_id: @finantial_product.product_type_id, url: @finantial_product.url, visibility: @finantial_product.visibility } }
    end

    assert_redirected_to finantial_product_url(FinantialProduct.last)
  end

  test "should show finantial_product" do
    get finantial_product_url(@finantial_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_finantial_product_url(@finantial_product)
    assert_response :success
  end

  test "should update finantial_product" do
    patch finantial_product_url(@finantial_product), params: { finantial_product: { description: @finantial_product.description, image: @finantial_product.image, institution_type_id: @finantial_product.institution_type_id, name: @finantial_product.name, product_type_id: @finantial_product.product_type_id, url: @finantial_product.url, visibility: @finantial_product.visibility } }
    assert_redirected_to finantial_product_url(@finantial_product)
  end

  test "should destroy finantial_product" do
    assert_difference('FinantialProduct.count', -1) do
      delete finantial_product_url(@finantial_product)
    end

    assert_redirected_to finantial_products_url
  end
end
