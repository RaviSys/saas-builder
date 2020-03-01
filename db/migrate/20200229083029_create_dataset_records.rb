class CreateDatasetRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :dataset_records do |t|
      t.references :dataset, foreign_key: true
      t.string :token

      t.timestamps
    end
  end
end
