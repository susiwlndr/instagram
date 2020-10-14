class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  
  def self.already_liked?(current_user, params)
  	Like.where(user_id: current_user, post_id:params[:post_id]).exists?
  end
end
