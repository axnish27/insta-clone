class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments


  validates :content, presence: true ,length: { minimum: 5, maximum: 255 }
  validates :caption, presence: true ,length: { minimum: 1, maximum: 100 }

end
