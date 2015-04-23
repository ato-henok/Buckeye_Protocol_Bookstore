class OrderNotifier < ActionMailer::Base
  default from: "admin@buckeyeprotocol.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.send_email.subject
  #
  def send_email(user)
    
    @user = user
    
    mail(to:@user.email, subject: 'Your OSU Book Order')

  end

end
