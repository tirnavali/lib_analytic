require 'test_helper'

class JournalDocReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journal_doc_report = journal_doc_reports(:one)
  end

  test "should get index" do
    get journal_doc_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_journal_doc_report_url
    assert_response :success
  end

  test "should create journal_doc_report" do
    assert_difference('JournalDocReport.count') do
      post journal_doc_reports_url, params: { journal_doc_report: { author_given: @journal_doc_report.author_given, document_count: @journal_doc_report.document_count, journal_count: @journal_doc_report.journal_count, journal_doc_analytic_id: @journal_doc_report.journal_doc_analytic_id, report_date: @journal_doc_report.report_date, reporter: @journal_doc_report.reporter, unique_author_given: @journal_doc_report.unique_author_given, unique_subjects_given: @journal_doc_report.unique_subjects_given } }
    end

    assert_redirected_to journal_doc_report_url(JournalDocReport.last)
  end

  test "should show journal_doc_report" do
    get journal_doc_report_url(@journal_doc_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_journal_doc_report_url(@journal_doc_report)
    assert_response :success
  end

  test "should update journal_doc_report" do
    patch journal_doc_report_url(@journal_doc_report), params: { journal_doc_report: { author_given: @journal_doc_report.author_given, document_count: @journal_doc_report.document_count, journal_count: @journal_doc_report.journal_count, journal_doc_analytic_id: @journal_doc_report.journal_doc_analytic_id, report_date: @journal_doc_report.report_date, reporter: @journal_doc_report.reporter, unique_author_given: @journal_doc_report.unique_author_given, unique_subjects_given: @journal_doc_report.unique_subjects_given } }
    assert_redirected_to journal_doc_report_url(@journal_doc_report)
  end

  test "should destroy journal_doc_report" do
    assert_difference('JournalDocReport.count', -1) do
      delete journal_doc_report_url(@journal_doc_report)
    end

    assert_redirected_to journal_doc_reports_url
  end
end
