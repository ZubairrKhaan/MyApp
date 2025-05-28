class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url = Rails.env.development? ? "http://localhost:3000" : "https://#{ENV["server_domain"]}"
    mail(to: @user.email, subject: 'Welcome to My Awesome App')
  end
end
