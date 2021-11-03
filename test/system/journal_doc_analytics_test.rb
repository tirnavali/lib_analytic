require "application_system_test_case"

class JournalDocAnalyticsTest < ApplicationSystemTestCase
  setup do
    @journal_doc_analytic = journal_doc_analytics(:one)
  end

  test "visiting the index" do
    visit journal_doc_analytics_url
    assert_selector "h1", text: "Journal Doc Analytics"
  end

  test "creating a Journal doc analytic" do
    visit journal_doc_analytics_url
    click_on "New Journal Doc Analytic"

    fill_in "New author", with: @journal_doc_analytic.new_author
    fill_in "New record", with: @journal_doc_analytic.new_record
    fill_in "New subject", with: @journal_doc_analytic.new_subject
    fill_in "Report date", with: @journal_doc_analytic.report_date
    fill_in "Reporter", with: @journal_doc_analytic.reporter
    fill_in "Updated record", with: @journal_doc_analytic.updated_record
    click_on "Create Journal doc analytic"

    assert_text "Journal doc analytic was successfully created"
    click_on "Back"
  end

  test "updating a Journal doc analytic" do
    visit journal_doc_analytics_url
    click_on "Edit", match: :first

    fill_in "New author", with: @journal_doc_analytic.new_author
    fill_in "New record", with: @journal_doc_analytic.new_record
    fill_in "New subject", with: @journal_doc_analytic.new_subject
    fill_in "Report date", with: @journal_doc_analytic.report_date
    fill_in "Reporter", with: @journal_doc_analytic.reporter
    fill_in "Updated record", with: @journal_doc_analytic.updated_record
    click_on "Update Journal doc analytic"

    assert_text "Journal doc analytic was successfully updated"
    click_on "Back"
  end

  test "destroying a Journal doc analytic" do
    visit journal_doc_analytics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Journal doc analytic was successfully destroyed"
  end
end
