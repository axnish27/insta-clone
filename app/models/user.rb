class User < ApplicationRecord
  has_many :followings, foreign_key: "follower_id", class_name: "Follow"
  has_many :followers, foreign_key: "followee_id", class_name: "Follow"
  has_many :posts
  has_many :likes
  has_many :comments


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
