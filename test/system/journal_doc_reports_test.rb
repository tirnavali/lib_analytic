require "application_system_test_case"

class JournalDocReportsTest < ApplicationSystemTestCase
  setup do
    @journal_doc_report = journal_doc_reports(:one)
  end

  test "visiting the index" do
    visit journal_doc_reports_url
    assert_selector "h1", text: "Journal Doc Reports"
  end

  test "creating a Journal doc report" do
    visit journal_doc_reports_url
    click_on "New Journal Doc Report"

    fill_in "Author given", with: @journal_doc_report.author_given
    fill_in "Document count", with: @journal_doc_report.document_count
    fill_in "Journal count", with: @journal_doc_report.journal_count
    fill_in "Journal doc analytic", with: @journal_doc_report.journal_doc_analytic_id
    fill_in "Report date", with: @journal_doc_report.report_date
    fill_in "Reporter", with: @journal_doc_report.reporter
    fill_in "Unique author given", with: @journal_doc_report.unique_author_given
    fill_in "Unique subjects given", with: @journal_doc_report.unique_subjects_given
    click_on "Create Journal doc report"

    assert_text "Journal doc report was successfully created"
    click_on "Back"
  end

  test "updating a Journal doc report" do
    visit journal_doc_reports_url
    click_on "Edit", match: :first

    fill_in "Author given", with: @journal_doc_report.author_given
    fill_in "Document count", with: @journal_doc_report.document_count
    fill_in "Journal count", with: @journal_doc_report.journal_count
    fill_in "Journal doc analytic", with: @journal_doc_report.journal_doc_analytic_id
    fill_in "Report date", with: @journal_doc_report.report_date
    fill_in "Reporter", with: @journal_doc_report.reporter
    fill_in "Unique author given", with: @journal_doc_report.unique_author_given
    fill_in "Unique subjects given", with: @journal_doc_report.unique_subjects_given
    click_on "Update Journal doc report"

    assert_text "Journal doc report was successfully updated"
    click_on "Back"
  end

  test "destroying a Journal doc report" do
    visit journal_doc_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Journal doc report was successfully destroyed"
  end
end
