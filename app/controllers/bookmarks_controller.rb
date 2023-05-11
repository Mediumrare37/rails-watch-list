class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new, status: :unprocessable_entity
  end

  def destroy
    @bookmark = Bookmark.destroy(params[:id])
  end
end
