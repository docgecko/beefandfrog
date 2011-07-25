class Notifier < ActionMailer::Base
  def support_notification(sender)
    @sender = sender
    mail(:to => "beefandfrog@yahoo.com",
      :from => sender.email,
      :subject => "#{sender.type} - Contact Beef & Frog ")
  end
end
