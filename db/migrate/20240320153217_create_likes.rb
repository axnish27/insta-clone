class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.integer :follower_id
      t.integer :post_id
      t.timestamps
    end
  end
end
