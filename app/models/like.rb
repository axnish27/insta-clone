class Like < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :post
end
