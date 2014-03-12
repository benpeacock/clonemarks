class Bookmark < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes
  attr_accessible :name, :url, :user, :topic

  scope :desc, order("bookmarks.updated_at DESC")

  def self.new_from_email(mail)
  	bookmark = nil
  	# get the user from the e-mail address
    Rails.logger.info ">>> email address is: #{mail.from.first}"
    user = User.find_by_email(mail.from.first)
    if user 
      bookmark = Bookmark.new
      bookmark.user = user
      Rails.logger.info ">>>> Bookmark user: #{bookmark.user.inspect}"
      # strip the tag off the subject and set it as subject
      bookmark.topic = Topic.where(name: mail.subject.gsub(/#/, '')).first
      bookmark.topic ||= Topic.create(name: mail.subject.gsub(/#/, ''))

      # strip the hash tag off.
    	# look up the topic in the db
    	# get the id of the topic
    	# save the bookmark using topic id
    	# bookmark[:topic] = topic ##This just saves the topic, not the id ##
    	bookmark.url = mail.body.decoded
      Rails.logger.info ">>>> Bookmark: #{bookmark.inspect}"
    end
  	bookmark
  end
end
