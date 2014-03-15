class User < ActiveRecord::Base
	has_many :bookmarks
	has_many :likes, dependent: :destroy
	has_many :topics
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :likes

  def liked(bookmark)
    self.likes.where(bookmark_id: bookmark.id).first
  end

  ROLES = %w[member moderator admin]
  def role?(base_role)
   role.nil? ? false : ROLES.index(base_role.to_s) <= ROLES.index(role)
  end  
end
