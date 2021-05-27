require 'test_helper'

class FriendlyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendly_type = friendly_types(:one)
  end

  test "should get index" do
    get friendly_types_url
    assert_response :success
  end

  test "should get new" do
    get new_friendly_type_url
    assert_response :success
  end

  test "should create friendly_type" do
    assert_difference('FriendlyType.count') do
      post friendly_types_url, params: { friendly_type: { image: @friendly_type.image, name: @friendly_type.name, user_id: @friendly_type.user_id } }
    end

    assert_redirected_to friendly_type_url(FriendlyType.last)
  end

  test "should show friendly_type" do
    get friendly_type_url(@friendly_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendly_type_url(@friendly_type)
    assert_response :success
  end

  test "should update friendly_type" do
    patch friendly_type_url(@friendly_type), params: { friendly_type: { image: @friendly_type.image, name: @friendly_type.name, user_id: @friendly_type.user_id } }
    assert_redirected_to friendly_type_url(@friendly_type)
  end

  test "should destroy friendly_type" do
    assert_difference('FriendlyType.count', -1) do
      delete friendly_type_url(@friendly_type)
    end

    assert_redirected_to friendly_types_url
  end
end
