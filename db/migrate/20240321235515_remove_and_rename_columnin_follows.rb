class RemoveAndRenameColumninFollows < ActiveRecord::Migration[7.1]
  def change
    create_table :follows do |t|
      t.integer :user_id
      t.integer :followee_id
    end
  end
end
