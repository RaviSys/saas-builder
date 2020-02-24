class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :is_required
      t.integer :position
      t.references :dataset, foreign_key: true

      t.timestamps
    end
  end
end
