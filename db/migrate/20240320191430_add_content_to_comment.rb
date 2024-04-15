class AddContentToComment < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :comment_text, :text
  end
end
