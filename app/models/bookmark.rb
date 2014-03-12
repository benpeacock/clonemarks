class Bookmark < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes
  attr_accessible :name, :url

  scope :desc, order("bookmarks.updated_at DESC")

  def self.new_from_email(mail)
  	bookmark = Bookmark.new
  	Rails.logger.info ">>>> #{mail}.inspect"
    # get the user from the e-mail address
    bookmark[:user] = User.find_by_mail(mail.from)
    # strip the tag off the subject and set it as subject
    bookmark[:topic] = topic.where(name: mail.subject.gsub(/#/, '')).first
    bookmark[:topic] ||= Topic.create(name: mail.subject.gsub(/#/, ''))

    # strip the hash tag off.
  	# look up the topic in the db
  	# get the id of the topic
  	# save the bookmark using topic id
  	# bookmark[:topic] = topic ##This just saves the topic, not the id ##
  	bookmark[:url] = mail.body.decoded
  	bookmark
  end
end
