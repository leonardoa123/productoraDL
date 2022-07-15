require "application_system_test_case"

class ConcertsTest < ApplicationSystemTestCase
  setup do
    @concert = concerts(:one)
  end

  test "visiting the index" do
    visit concerts_url
    assert_selector "h1", text: "Concerts"
  end

  test "creating a Concert" do
    visit concerts_url
    click_on "New Concert"

    fill_in "Band", with: @concert.band_id
    fill_in "Description", with: @concert.description
    fill_in "Duration", with: @concert.duration
    fill_in "Event", with: @concert.event_id
    fill_in "Q audience", with: @concert.q_audience
    click_on "Create Concert"

    assert_text "Concert was successfully created"
    click_on "Back"
  end

  test "updating a Concert" do
    visit concerts_url
    click_on "Edit", match: :first

    fill_in "Band", with: @concert.band_id
    fill_in "Description", with: @concert.description
    fill_in "Duration", with: @concert.duration
    fill_in "Event", with: @concert.event_id
    fill_in "Q audience", with: @concert.q_audience
    click_on "Update Concert"

    assert_text "Concert was successfully updated"
    click_on "Back"
  end

  test "destroying a Concert" do
    visit concerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Concert was successfully destroyed"
  end
end
