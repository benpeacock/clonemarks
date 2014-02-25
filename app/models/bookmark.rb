class Bookmark < ActiveRecord::Base
  belongs_to :topic
  has_many :likes
  attr_accessible :name, :url
end
