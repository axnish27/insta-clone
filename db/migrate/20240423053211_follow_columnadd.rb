class FollowColumnadd < ActiveRecord::Migration[7.1]
  def change
    add_column :follows , :request_id , :integer
  end
end
