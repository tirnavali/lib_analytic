require 'test_helper'

class JournalDocAnalyticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journal_doc_analytic = journal_doc_analytics(:one)
  end

  test "should get index" do
    get journal_doc_analytics_url
    assert_response :success
  end

  test "should get new" do
    get new_journal_doc_analytic_url
    assert_response :success
  end

  test "should create journal_doc_analytic" do
    assert_difference('JournalDocAnalytic.count') do
      post journal_doc_analytics_url, params: { journal_doc_analytic: { new_author: @journal_doc_analytic.new_author, new_record: @journal_doc_analytic.new_record, new_subject: @journal_doc_analytic.new_subject, report_date: @journal_doc_analytic.report_date, reporter: @journal_doc_analytic.reporter, updated_record: @journal_doc_analytic.updated_record } }
    end

    assert_redirected_to journal_doc_analytic_url(JournalDocAnalytic.last)
  end

  test "should show journal_doc_analytic" do
    get journal_doc_analytic_url(@journal_doc_analytic)
    assert_response :success
  end

  test "should get edit" do
    get edit_journal_doc_analytic_url(@journal_doc_analytic)
    assert_response :success
  end

  test "should update journal_doc_analytic" do
    patch journal_doc_analytic_url(@journal_doc_analytic), params: { journal_doc_analytic: { new_author: @journal_doc_analytic.new_author, new_record: @journal_doc_analytic.new_record, new_subject: @journal_doc_analytic.new_subject, report_date: @journal_doc_analytic.report_date, reporter: @journal_doc_analytic.reporter, updated_record: @journal_doc_analytic.updated_record } }
    assert_redirected_to journal_doc_analytic_url(@journal_doc_analytic)
  end

  test "should destroy journal_doc_analytic" do
    assert_difference('JournalDocAnalytic.count', -1) do
      delete journal_doc_analytic_url(@journal_doc_analytic)
    end

    assert_redirected_to journal_doc_analytics_url
  end
end
