class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def show
  end

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    if current_user.likes.create(bookmark: @bookmark)
      flash[:notice] = "Bookmark liked"      
    else
      flash[:error] = "Unable to add like. Please try again."      
    end
    redirect_to topics_path
  end

  def destroy
    @like = current_user.likes.find(params[:id])

    if @like.destroy
      flash[:notice] = "Removed like."
      redirect_to [@topic]
    else
      flash[:error] = "Unable to remove like."
      redirect_to [@topic]
    end
  end

end
