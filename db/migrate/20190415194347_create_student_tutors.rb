class CreateStudentTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :student_tutors do |t|
      t.integer :tutor_subject_id
      t.integer :student_id
      t.string :status 

      t.timestamps
    end
  end
end
