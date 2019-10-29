require "application_system_test_case"

class AppointmenttsTest < ApplicationSystemTestCase
  setup do
    @appointmentt = appointmentts(:one)
  end

  test "visiting the index" do
    visit appointmentts_url
    assert_selector "h1", text: "Appointmentts"
  end

  test "creating a Appointmentt" do
    visit appointmentts_url
    click_on "New Appointmentt"

    fill_in "Patient", with: @appointmentt.patient_id
    fill_in "Physician", with: @appointmentt.physician_id
    fill_in "Visit", with: @appointmentt.visit
    click_on "Create Appointmentt"

    assert_text "Appointmentt was successfully created"
    click_on "Back"
  end

  test "updating a Appointmentt" do
    visit appointmentts_url
    click_on "Edit", match: :first

    fill_in "Patient", with: @appointmentt.patient_id
    fill_in "Physician", with: @appointmentt.physician_id
    fill_in "Visit", with: @appointmentt.visit
    click_on "Update Appointmentt"

    assert_text "Appointmentt was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointmentt" do
    visit appointmentts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointmentt was successfully destroyed"
  end
end
