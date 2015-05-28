class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :feedbacks
  has_many :feedback_requests
  
  def sent_feedback_requests(current_user)
    return FeedbackRequest.where(sender_id: current_user.id)
  end
  
  def sent_feedbacks(current_user)
    return Feedback.where(author_id: current_user.id)
  end
end
