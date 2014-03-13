class WelcomeController < ApplicationController
  def index
  	@topics = current_user.topics
  	@bookmarks = current_user.bookmarks
  	@likes = current_user.likes
  end
end
