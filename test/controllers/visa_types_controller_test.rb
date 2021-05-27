require 'test_helper'

class VisaTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa_type = visa_types(:one)
  end

  test "should get index" do
    get visa_types_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_type_url
    assert_response :success
  end

  test "should create visa_type" do
    assert_difference('VisaType.count') do
      post visa_types_url, params: { visa_type: {  } }
    end

    assert_redirected_to visa_type_url(VisaType.last)
  end

  test "should show visa_type" do
    get visa_type_url(@visa_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_type_url(@visa_type)
    assert_response :success
  end

  test "should update visa_type" do
    patch visa_type_url(@visa_type), params: { visa_type: {  } }
    assert_redirected_to visa_type_url(@visa_type)
  end

  test "should destroy visa_type" do
    assert_difference('VisaType.count', -1) do
      delete visa_type_url(@visa_type)
    end

    assert_redirected_to visa_types_url
  end
end
