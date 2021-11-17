class ApplicationMailer < ActionMailer::Base
  #test_address
  default from: 'from@example.com'
  layout 'mailer'
end
