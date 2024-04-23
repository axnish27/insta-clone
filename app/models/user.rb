class User < ApplicationRecord
  #User.follows //followings
  has_many :follows, foreign_key: "user_id"
  #User.followers // followers
  has_many :followers, foreign_key: "followee_id", class_name: "Follow"

  has_many :posts

  has_many :likes , foreign_key: "follower_id"
  has_many :comments , foreign_key: "follower_id"
  has_one_attached :profile_pic

  has_many :sent_requests , foreign_key: "from_id", class_name: "Request"

  has_many :recived_requests, foreign_key: "to_id", class_name: "Request"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  devise :omniauthable, omniauth_providers: %i[google_oauth2]
  validates :username, presence: true ,length: { minimum: 3, maximum: 25 } , uniqueness: true



  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    # unless user
    #     user = User.create(name: data['name'],
    #        email: data['email'],
    #        password: Devise.friendly_token[0,20]
    #     )
    # end
    user
end

end
