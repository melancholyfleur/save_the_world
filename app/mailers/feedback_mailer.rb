class FeedbackMailer < ApplicationMailer
  default :to => "melancholyfleur@gmail.com"

  def send_me_feedback(feedback)
    @feedback = feedback

    mail from: @feedback.email, 
         subject: @feedback.subject,
         body: @feedback.content
  end
end
