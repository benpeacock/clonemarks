class Like < ActiveRecord::Base
  belongs_to :bookmark
  belongs_to :user
  belongs_to :topic
  # attr_accessible :title, :body
end
