class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:bookmark][:movie_id])
    @bookmark = Bookmark.new(comment: params[:bookmark][:comment])
    @bookmark.movie_id = @movie.id
    @bookmark.list_id = @list.id
    if @bookmark.save # si il save bien, il renvoie l'instance, sinon renvoie false
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end
end
