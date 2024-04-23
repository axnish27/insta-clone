class ChnageFromId < ActiveRecord::Migration[7.1]
  def change
    rename_column :requests, :from, :from_id
    rename_column :requests, :to, :to_id
  end
end
