class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.integer :from
      t.integer :to
      t.timestamps
    end
  end
end
