require "test_helper"

class ChooseSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choose_subject = choose_subjects(:one)
  end

  test "should get index" do
    get choose_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_choose_subject_url
    assert_response :success
  end

  test "should create choose_subject" do
    assert_difference("ChooseSubject.count") do
      post choose_subjects_url, params: { choose_subject: { selected_subject: @choose_subject.selected_subject } }
    end

    assert_redirected_to choose_subject_url(ChooseSubject.last)
  end

  test "should show choose_subject" do
    get choose_subject_url(@choose_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_choose_subject_url(@choose_subject)
    assert_response :success
  end

  test "should update choose_subject" do
    patch choose_subject_url(@choose_subject), params: { choose_subject: { selected_subject: @choose_subject.selected_subject } }
    assert_redirected_to choose_subject_url(@choose_subject)
  end

  test "should destroy choose_subject" do
    assert_difference("ChooseSubject.count", -1) do
      delete choose_subject_url(@choose_subject)
    end

    assert_redirected_to choose_subjects_url
  end
end
