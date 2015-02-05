class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  def activation_needed_email(user)
    # @greeting = "Hi"
    #
    # mail to: "to@example.org"
    @user = user
    @url  = "http://arcane-plains-1704.herokuapp.com/#{user.activation_token}/activate"
    mail(:to => user.email,
         :subject => "Welcome to My Awesome Site")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  def activation_success_email(user)
    @user = user
    @url  = "http://arcane-plains-1704.herokuapp.com/login"
    mail(:to => user.email,
         :subject => "Your account is now activated")
  end
end
