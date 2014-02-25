class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :bookmarks
  has_many :likes
  attr_accessible :name
end
