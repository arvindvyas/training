require "application_system_test_case"

class ChooseSubjectsTest < ApplicationSystemTestCase
  setup do
    @choose_subject = choose_subjects(:one)
  end

  test "visiting the index" do
    visit choose_subjects_url
    assert_selector "h1", text: "Choose subjects"
  end

  test "should create choose subject" do
    visit choose_subjects_url
    click_on "New choose subject"

    fill_in "Selected subject", with: @choose_subject.selected_subject
    click_on "Create Choose subject"

    assert_text "Choose subject was successfully created"
    click_on "Back"
  end

  test "should update Choose subject" do
    visit choose_subject_url(@choose_subject)
    click_on "Edit this choose subject", match: :first

    fill_in "Selected subject", with: @choose_subject.selected_subject
    click_on "Update Choose subject"

    assert_text "Choose subject was successfully updated"
    click_on "Back"
  end

  test "should destroy Choose subject" do
    visit choose_subject_url(@choose_subject)
    click_on "Destroy this choose subject", match: :first

    assert_text "Choose subject was successfully destroyed"
  end
end
