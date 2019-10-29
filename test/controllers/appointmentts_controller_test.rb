require 'test_helper'

class AppointmenttsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointmentt = appointmentts(:one)
  end

  test "should get index" do
    get appointmentts_url
    assert_response :success
  end

  test "should get new" do
    get new_appointmentt_url
    assert_response :success
  end

  test "should create appointmentt" do
    assert_difference('Appointmentt.count') do
      post appointmentts_url, params: { appointmentt: { patient_id: @appointmentt.patient_id, physician_id: @appointmentt.physician_id, visit: @appointmentt.visit } }
    end

    assert_redirected_to appointmentt_url(Appointmentt.last)
  end

  test "should show appointmentt" do
    get appointmentt_url(@appointmentt)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointmentt_url(@appointmentt)
    assert_response :success
  end

  test "should update appointmentt" do
    patch appointmentt_url(@appointmentt), params: { appointmentt: { patient_id: @appointmentt.patient_id, physician_id: @appointmentt.physician_id, visit: @appointmentt.visit } }
    assert_redirected_to appointmentt_url(@appointmentt)
  end

  test "should destroy appointmentt" do
    assert_difference('Appointmentt.count', -1) do
      delete appointmentt_url(@appointmentt)
    end

    assert_redirected_to appointmentts_url
  end
end
