class UserMailer < ApplicationMailer
  default from: 'sendertestsparta@gmail.com'
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'New Project Proposal')
  end
end
