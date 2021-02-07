require 'test_helper'

class ReferenceAnalyticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reference_analytic = reference_analytics(:one)
  end

  test "should get index" do
    get reference_analytics_url
    assert_response :success
  end

  test "should get new" do
    get new_reference_analytic_url
    assert_response :success
  end

  test "should create reference_analytic" do
    assert_difference('ReferenceAnalytic.count') do
      post reference_analytics_url, params: { reference_analytic: { report_date: @reference_analytic.report_date, reporter: @reference_analytic.reporter, user_from_inside: @reference_analytic.user_from_inside, user_from_out: @reference_analytic.user_from_out } }
    end

    assert_redirected_to reference_analytic_url(ReferenceAnalytic.last)
  end

  test "should show reference_analytic" do
    get reference_analytic_url(@reference_analytic)
    assert_response :success
  end

  test "should get edit" do
    get edit_reference_analytic_url(@reference_analytic)
    assert_response :success
  end

  test "should update reference_analytic" do
    patch reference_analytic_url(@reference_analytic), params: { reference_analytic: { report_date: @reference_analytic.report_date, reporter: @reference_analytic.reporter, user_from_inside: @reference_analytic.user_from_inside, user_from_out: @reference_analytic.user_from_out } }
    assert_redirected_to reference_analytic_url(@reference_analytic)
  end

  test "should destroy reference_analytic" do
    assert_difference('ReferenceAnalytic.count', -1) do
      delete reference_analytic_url(@reference_analytic)
    end

    assert_redirected_to reference_analytics_url
  end
end
