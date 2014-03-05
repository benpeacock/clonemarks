ActionMailer::Base.smtp_settings = {
  :port           => '587',
  :address        => 'smtp.mailgun.org',
  :user_name      => ENV['MAILGUN_USERNAME'],
  :password       => ENV['MAILGUN_PASSWORD'],
  :domain         => 'clonemarks.heroku.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp

