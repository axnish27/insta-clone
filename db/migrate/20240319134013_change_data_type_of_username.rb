class ChangeDataTypeOfUsername < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :username, :text
  end
end
