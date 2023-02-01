require "application_system_test_case"

class QuestionPapersTest < ApplicationSystemTestCase
  setup do
    @question_paper = question_papers(:one)
  end

  test "visiting the index" do
    visit question_papers_url
    assert_selector "h1", text: "Question papers"
  end

  test "should create question paper" do
    visit question_papers_url
    click_on "New question paper"

    click_on "Create Question paper"

    assert_text "Question paper was successfully created"
    click_on "Back"
  end

  test "should update Question paper" do
    visit question_paper_url(@question_paper)
    click_on "Edit this question paper", match: :first

    click_on "Update Question paper"

    assert_text "Question paper was successfully updated"
    click_on "Back"
  end

  test "should destroy Question paper" do
    visit question_paper_url(@question_paper)
    click_on "Destroy this question paper", match: :first

    assert_text "Question paper was successfully destroyed"
  end
end
