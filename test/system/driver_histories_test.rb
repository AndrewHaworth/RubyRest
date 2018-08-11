require "application_system_test_case"

class DriverHistoriesTest < ApplicationSystemTestCase
  setup do
    @driver_history = driver_histories(:one)
  end

  test "visiting the index" do
    visit driver_histories_url
    assert_selector "h1", text: "Driver Histories"
  end

  test "creating a Driver history" do
    visit driver_histories_url
    click_on "New Driver History"

    fill_in "Date Of Incidient", with: @driver_history.date_of_incidient
    fill_in "Description", with: @driver_history.description
    fill_in "Incident Type", with: @driver_history.incident_type
    fill_in "Value", with: @driver_history.value
    click_on "Create Driver history"

    assert_text "Driver history was successfully created"
    click_on "Back"
  end

  test "updating a Driver history" do
    visit driver_histories_url
    click_on "Edit", match: :first

    fill_in "Date Of Incidient", with: @driver_history.date_of_incidient
    fill_in "Description", with: @driver_history.description
    fill_in "Incident Type", with: @driver_history.incident_type
    fill_in "Value", with: @driver_history.value
    click_on "Update Driver history"

    assert_text "Driver history was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver history" do
    visit driver_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver history was successfully destroyed"
  end
end
