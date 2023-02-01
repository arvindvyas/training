require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "should create question" do
    visit questions_url
    click_on "New question"

    fill_in "Answer", with: @question.answer
    fill_in "First", with: @question.first
    fill_in "Forth", with: @question.forth
    fill_in "Question", with: @question.question
    fill_in "Second", with: @question.second
    fill_in "Subject", with: @question.subject_id
    fill_in "Third", with: @question.third
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "should update Question" do
    visit question_url(@question)
    click_on "Edit this question", match: :first

    fill_in "Answer", with: @question.answer
    fill_in "First", with: @question.first
    fill_in "Forth", with: @question.forth
    fill_in "Question", with: @question.question
    fill_in "Second", with: @question.second
    fill_in "Subject", with: @question.subject_id
    fill_in "Third", with: @question.third
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "should destroy Question" do
    visit question_url(@question)
    click_on "Destroy this question", match: :first

    assert_text "Question was successfully destroyed"
  end
end
