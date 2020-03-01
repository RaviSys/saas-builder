class AddTokenToDataset < ActiveRecord::Migration[5.2]
  def change
    add_column :datasets, :token, :string
  end
end
