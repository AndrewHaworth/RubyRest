require 'test_helper'

class DriverHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver_history = driver_histories(:one)
  end

  test "should get index" do
    get driver_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_driver_history_url
    assert_response :success
  end

  test "should create driver_history" do
    assert_difference('DriverHistory.count') do
      post driver_histories_url, params: { driver_history: { date_of_incidient: @driver_history.date_of_incidient, description: @driver_history.description, incident_type: @driver_history.incident_type, value: @driver_history.value } }
    end

    assert_redirected_to driver_history_url(DriverHistory.last)
  end

  test "should show driver_history" do
    get driver_history_url(@driver_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_driver_history_url(@driver_history)
    assert_response :success
  end

  test "should update driver_history" do
    patch driver_history_url(@driver_history), params: { driver_history: { date_of_incidient: @driver_history.date_of_incidient, description: @driver_history.description, incident_type: @driver_history.incident_type, value: @driver_history.value } }
    assert_redirected_to driver_history_url(@driver_history)
  end

  test "should destroy driver_history" do
    assert_difference('DriverHistory.count', -1) do
      delete driver_history_url(@driver_history)
    end

    assert_redirected_to driver_histories_url
  end
end
