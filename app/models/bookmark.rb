class Bookmark < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes
  attr_accessible :name, :url

  def self.new_from_email(mail)
  	bookmark = Bookmark.new
  	Rails.logger.info ">>>> #{mail}.inspect"
  	# bookmark[:name] = "test name"
  	bookmark[:name] = mail.subject
  	bookmark[:url] = mail.stripped_text
  	bookmark
  end
end
