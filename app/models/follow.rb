class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :following, foreign_key: "followee_id", class_name: "User"
end
