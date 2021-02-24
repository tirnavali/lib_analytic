require 'test_helper'

class EmploymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employment = employments(:one)
  end

  test "should get index" do
    get employments_url
    assert_response :success
  end

  test "should get new" do
    get new_employment_url
    assert_response :success
  end

  test "should create employment" do
    assert_difference('Employment.count') do
      post employments_url, params: { employment: { department_id: @employment.department_id, end_date: @employment.end_date, personel_id: @employment.personel_id, start_date: @employment.start_date } }
    end

    assert_redirected_to employment_url(Employment.last)
  end

  test "should show employment" do
    get employment_url(@employment)
    assert_response :success
  end

  test "should get edit" do
    get edit_employment_url(@employment)
    assert_response :success
  end

  test "should update employment" do
    patch employment_url(@employment), params: { employment: { department_id: @employment.department_id, end_date: @employment.end_date, personel_id: @employment.personel_id, start_date: @employment.start_date } }
    assert_redirected_to employment_url(@employment)
  end

  test "should destroy employment" do
    assert_difference('Employment.count', -1) do
      delete employment_url(@employment)
    end

    assert_redirected_to employments_url
  end
end
