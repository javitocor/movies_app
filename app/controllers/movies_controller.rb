class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.create(movie_params)

    flash.notice = 'Movie created!'

    redirect_to root_path
  end

  def new
    @movie = Movie.new
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)

    flash.notice = 'Movie updated!'

    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.delete

    flash.notice = 'Movie deleted!'

    redirect_to root_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :description)
  end
end


