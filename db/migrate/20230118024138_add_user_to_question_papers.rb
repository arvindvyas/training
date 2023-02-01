class AddUserToQuestionPapers < ActiveRecord::Migration[7.0]
  def change
    add_reference :question_papers, :user
  end
end
