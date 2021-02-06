# frozen_string_literal: true

# Mailing functionality
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
