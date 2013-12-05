class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.new_account_confirmation_email.subject
  #
  def welcome_email(resource)
    
    @resource = resource

    mail :to => @resource.email, :from => "email@domain.com", :subject => "Subject line"
    
  end
end
