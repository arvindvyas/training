class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :first
      t.string :second
      t.string :third
      t.string :forth
      t.string :answer
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
