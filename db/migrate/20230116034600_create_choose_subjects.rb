class CreateChooseSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :choose_subjects do |t|
      t.string :selected_subject

      t.timestamps
    end
  end
end
