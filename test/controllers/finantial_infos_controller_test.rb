require 'test_helper'

class FinantialInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finantial_info = finantial_infos(:one)
  end

  test "should get index" do
    get finantial_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_finantial_info_url
    assert_response :success
  end

  test "should create finantial_info" do
    assert_difference('FinantialInfo.count') do
      post finantial_infos_url, params: { finantial_info: { salary: @finantial_info.salary, salay_extra: @finantial_info.salay_extra, user_id: @finantial_info.user_id, visa_type_id: @finantial_info.visa_type_id, working_time: @finantial_info.working_time, worker_type_id: @finantial_info.worker_type_id } }
    end

    assert_redirected_to finantial_info_url(FinantialInfo.last)
  end

  test "should show finantial_info" do
    get finantial_info_url(@finantial_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_finantial_info_url(@finantial_info)
    assert_response :success
  end

  test "should update finantial_info" do
    patch finantial_info_url(@finantial_info), params: { finantial_info: { salary: @finantial_info.salary, salay_extra: @finantial_info.salay_extra, user_id: @finantial_info.user_id, visa_type_id: @finantial_info.visa_type_id, working_time: @finantial_info.working_time, worker_type_id: @finantial_info.worker_type_id } }
    assert_redirected_to finantial_info_url(@finantial_info)
  end

  test "should destroy finantial_info" do
    assert_difference('FinantialInfo.count', -1) do
      delete finantial_info_url(@finantial_info)
    end

    assert_redirected_to finantial_infos_url
  end
end
