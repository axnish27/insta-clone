class Comment < ApplicationRecord
belongs_to :follower , foreign_key: "follower_id", class_name: "User"
belongs_to :post

end
