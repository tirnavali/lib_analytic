require 'test_helper'

class CatalogReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalog_report = catalog_reports(:one)
  end

  test "should get index" do
    get catalog_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_catalog_report_url
    assert_response :success
  end

  test "should create catalog_report" do
    assert_difference('CatalogReport.count') do
      post catalog_reports_url, params: { catalog_report: { notes: @catalog_report.notes, report_date: @catalog_report.report_date, reporter: @catalog_report.reporter, reporter_title: @catalog_report.reporter_title } }
    end

    assert_redirected_to catalog_report_url(CatalogReport.last)
  end

  test "should show catalog_report" do
    get catalog_report_url(@catalog_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalog_report_url(@catalog_report)
    assert_response :success
  end

  test "should update catalog_report" do
    patch catalog_report_url(@catalog_report), params: { catalog_report: { notes: @catalog_report.notes, report_date: @catalog_report.report_date, reporter: @catalog_report.reporter, reporter_title: @catalog_report.reporter_title } }
    assert_redirected_to catalog_report_url(@catalog_report)
  end

  test "should destroy catalog_report" do
    assert_difference('CatalogReport.count', -1) do
      delete catalog_report_url(@catalog_report)
    end

    assert_redirected_to catalog_reports_url
  end
end
