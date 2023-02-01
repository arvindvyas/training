class AddColumnToQuestionPaper < ActiveRecord::Migration[7.0]
  def change
    add_column :question_papers, :question, :string
    add_column :question_papers, :answer, :string
    add_column :question_papers, :subject, :string

  end
end
