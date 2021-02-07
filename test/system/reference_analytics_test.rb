require "application_system_test_case"

class ReferenceAnalyticsTest < ApplicationSystemTestCase
  setup do
    @reference_analytic = reference_analytics(:one)
  end

  test "visiting the index" do
    visit reference_analytics_url
    assert_selector "h1", text: "Reference Analytics"
  end

  test "creating a Reference analytic" do
    visit reference_analytics_url
    click_on "New Reference Analytic"

    fill_in "Report date", with: @reference_analytic.report_date
    fill_in "Reporter", with: @reference_analytic.reporter
    fill_in "User from inside", with: @reference_analytic.user_from_inside
    fill_in "User from out", with: @reference_analytic.user_from_out
    click_on "Create Reference analytic"

    assert_text "Reference analytic was successfully created"
    click_on "Back"
  end

  test "updating a Reference analytic" do
    visit reference_analytics_url
    click_on "Edit", match: :first

    fill_in "Report date", with: @reference_analytic.report_date
    fill_in "Reporter", with: @reference_analytic.reporter
    fill_in "User from inside", with: @reference_analytic.user_from_inside
    fill_in "User from out", with: @reference_analytic.user_from_out
    click_on "Update Reference analytic"

    assert_text "Reference analytic was successfully updated"
    click_on "Back"
  end

  test "destroying a Reference analytic" do
    visit reference_analytics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reference analytic was successfully destroyed"
  end
end
