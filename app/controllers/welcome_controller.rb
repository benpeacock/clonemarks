class WelcomeController < ApplicationController
  def index
  	@topics = Topic.all
  	@likes = Like.all
  end
end
