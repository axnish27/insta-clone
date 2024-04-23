class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :following, foreign_key: "followee_id", class_name: "User"
  after_save :destroy_request



  private

  def destroy_request
    req = Request.find(self.request_id)
    req.destroy
  end
end
