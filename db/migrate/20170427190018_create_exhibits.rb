class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name
      t.string :description
      t.integer :insurance_cost
      t.integer :age_of_creation
      t.references :collection, index: true, foreign_key: true
      t.integer :height
      t.integer :width
      t.integer :length
      t.boolean :temp_control
      t.boolean :humidity_control
      t.boolean :people_security

      t.timestamps null: false
    end
  end
end
