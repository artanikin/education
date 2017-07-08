class CreateEducationProgramAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :education_program_assignments do |t|
      t.references :education_program, foreign_key: true
      t.integer :assignment_id
      t.string :assignment_type

      t.timestamps
    end
    add_index :education_program_assignments, [:assignment_id, :assignment_type], name: "edp_assignments"
  end
end
