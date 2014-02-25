class Like < ActiveRecord::Base
  belongs_to :bookmark
  # attr_accessible :title, :body
end
