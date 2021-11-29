class AddForeignKeyToTutorings < ActiveRecord::Migration[6.1]
  def change
    add_column :tutorings, :student_id, :integer
    add_column :tutorings, :tutor_id, :integer
    add_foreign_key :tutorings, :students
    add_foreign_key :tutorings, :tutors
  end
end
