class CreateEducationMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :education_materials do |t|
      t.references :course, foreign_key: true
      t.integer :material_id
      t.string :material_type

      t.timestamps
    end
    add_index :education_materials, [:material_id, :material_type]
  end
end
