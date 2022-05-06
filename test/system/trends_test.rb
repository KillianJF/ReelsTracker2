require "application_system_test_case"

class TrendsTest < ApplicationSystemTestCase
  setup do
    @trend = trends(:one)
  end

  test "visiting the index" do
    visit trends_url
    assert_selector "h1", text: "Trends"
  end

  test "creating a Trend" do
    visit trends_url
    click_on "New Trend"

    fill_in "Description", with: @trend.description
    fill_in "Domain", with: @trend.domain
    fill_in "Example", with: @trend.example
    fill_in "Ideas", with: @trend.ideas
    fill_in "Label", with: @trend.label
    fill_in "Posting date", with: @trend.posting_date
    fill_in "Started date", with: @trend.started_date
    fill_in "Virality", with: @trend.virality
    click_on "Create Trend"

    assert_text "Trend was successfully created"
    click_on "Back"
  end

  test "updating a Trend" do
    visit trends_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trend.description
    fill_in "Domain", with: @trend.domain
    fill_in "Example", with: @trend.example
    fill_in "Ideas", with: @trend.ideas
    fill_in "Label", with: @trend.label
    fill_in "Posting date", with: @trend.posting_date
    fill_in "Started date", with: @trend.started_date
    fill_in "Virality", with: @trend.virality
    click_on "Update Trend"

    assert_text "Trend was successfully updated"
    click_on "Back"
  end

  test "destroying a Trend" do
    visit trends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trend was successfully destroyed"
  end
end
