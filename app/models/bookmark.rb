class Bookmark < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes
  attr_accessible :name, :url

  def self.new_from_email(mail)
  	puts "Next step is figuring out how to parse emails"
  	bookmark = Bookmark.new
  	Rails.logger.info ">>>> #{mail}.inspect"
  	bookmark(params[:title]) = "test title"
  	bookmark(params[:url]) = "test url"
  end
end
