class Bookmark < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes
  attr_accessible :name, :url

  def self.new_from_email(mail)
  	bookmark = Bookmark.new
  	Rails.logger.info ">>>> #{mail}.inspect"
  	topic = mail.subject
  	# look up the topic in the db
  	# get the id of the topic
  	# save the bookmark using topic id
  	# bookmark[:topic] = topic
  	bookmark[:url] = mail.body.decoded
  	bookmark
  end
end
