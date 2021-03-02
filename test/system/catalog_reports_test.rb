require "application_system_test_case"

class CatalogReportsTest < ApplicationSystemTestCase
  setup do
    @catalog_report = catalog_reports(:one)
  end

  test "visiting the index" do
    visit catalog_reports_url
    assert_selector "h1", text: "Catalog Reports"
  end

  test "creating a Catalog report" do
    visit catalog_reports_url
    click_on "New Catalog Report"

    fill_in "Notes", with: @catalog_report.notes
    fill_in "Report date", with: @catalog_report.report_date
    fill_in "Reporter", with: @catalog_report.reporter
    fill_in "Reporter title", with: @catalog_report.reporter_title
    click_on "Create Catalog report"

    assert_text "Catalog report was successfully created"
    click_on "Back"
  end

  test "updating a Catalog report" do
    visit catalog_reports_url
    click_on "Edit", match: :first

    fill_in "Notes", with: @catalog_report.notes
    fill_in "Report date", with: @catalog_report.report_date
    fill_in "Reporter", with: @catalog_report.reporter
    fill_in "Reporter title", with: @catalog_report.reporter_title
    click_on "Update Catalog report"

    assert_text "Catalog report was successfully updated"
    click_on "Back"
  end

  test "destroying a Catalog report" do
    visit catalog_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catalog report was successfully destroyed"
  end
end
