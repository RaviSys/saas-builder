class CreateFieldValues < ActiveRecord::Migration[5.2]
  def change
    create_table :field_values do |t|
      t.string :value
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
