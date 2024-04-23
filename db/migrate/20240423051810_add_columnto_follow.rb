class AddColumntoFollow < ActiveRecord::Migration[7.1]
  def change
    add_column :requests , :request_id , :integer
  end
end
