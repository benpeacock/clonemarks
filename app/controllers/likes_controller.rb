class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def show
  end

  def create
    @bookmark = @bookmark.find(params[:bookmark_id])
    like = current_user.likes.create(bookmark: @bookmark)
    if like.valid?
      flash[:notice] = "Bookmark liked"
      redirect_to [@topic]
    else
      flash[:error] = "Unable to add like. Please try again."
      redirect_to [@topic]
    end
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
