class BookmarksController < ApplicationController
	before_filter :set_bookmark, except: [:index, :new, :create]

	def new
		@bookmark = Bookmark.new
	end

	def create
		@bookmark = Bookmark.new(params[:bookmark])
		@bookmark.user = current.user
		if @bookmark.save
			flash[:notice] = "Bookmark saved"
			redirect_to @bookmark
		else
			flash[:error] => "Bookmark not saved"
			# Redirect?  If so, to where?
		end
	end

	def destroy
	end

	def show
	end

	def index
		@bookmarks = Bookmark.all
	end

	private

	def set_bookmark
		@bookmark = Bookmark.find(params[:id])
	end
end
