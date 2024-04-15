class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.integer :follower_id
      t.integer :post_id
      t.timestamps
    end
  end
end
