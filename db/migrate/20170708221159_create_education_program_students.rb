class CreateEducationProgramStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :education_program_students do |t|
      t.references :education_program, foreign_key: true
      t.integer :student_id
      t.string :student_type

      t.timestamps
    end
    add_index :education_program_students, [:student_id, :student_type]
  end
end
