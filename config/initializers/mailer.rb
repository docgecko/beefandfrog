if Rails.env.development? or Rails.env.test?
  ActionMailer::Base.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = {  
    :address              => "smtp.bizmail.yahoo.com",  
    :port                 => 587,
    :domain               => "beefandfrog.com",  
    :user_name            => "beefandfrog@yahoo.com",  
    :password             => "password",
    :authentication       => "plain",  
    :enable_starttls_auto => true  
  }
end
