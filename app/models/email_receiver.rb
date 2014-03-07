class EmailReceiver < Incoming::Strategies::Mailgun
  setup :api_key => ENV['MAILGUN_API_KEY']

  def receive(mail)
    bookmark = Bookmark.new_from_email(mail)
    bookmark.save
  end
end
