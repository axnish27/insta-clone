class RequestsColumntoRomve < ActiveRecord::Migration[7.1]
  def change
    remove_column :requests , :request_id 
  end
end
