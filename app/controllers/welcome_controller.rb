class WelcomeController < ApplicationController
  def index
  	@topics = current_user.topics
  end
end
