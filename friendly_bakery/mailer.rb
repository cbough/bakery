require "action_mailer"

# set which directory ActionMailer should use
ActionMailer::Base.view_paths = File.dirname(__FILE__)

# ActionMailer configuration
ActionMailer::Base.smtp_settings = {
  address:    'smtp.gmail.com',
  port:       '587',
  user_name:  ENV['EMAIL'],
  password:   ENV['EMAIL_PASSWORD'],
  authentication: :plain
}
# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
end


class Letter < ApplicationMailer
  default from: 'from@example.com'

  def send_email(rec)
    mail(to: rec, subject: 'Welcome customer')
  end
end
