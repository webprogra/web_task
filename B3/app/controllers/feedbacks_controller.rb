class FeedbacksController < ApplicationController
  def new
    @feedback=Feedback.new
  end
  def create
    @posts=Post.all
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
        render 'guests/index'
    else
      render 'new'
    end
  end
  def show
    @feedbacks=Feedback.all
  end
  private
    def feedback_params
      params.require(:feedback).permit(:nickname,:content,:created_at)
    end
end
