class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.valid?
      FeedbackMailer.send_me_feedback(@feedback).deliver_now
      redirect_to root_path, notice: "Thank you for your input! We will be in touch shortly."
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name,
                                     :email,
                                     :subject,
                                     :content)
  end
end
