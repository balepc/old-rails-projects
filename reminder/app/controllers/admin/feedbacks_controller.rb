class Admin::FeedbacksController < Admin::AdminController

  def index
    @feedbacks = Feedback.find(:all)
  end
  
end
