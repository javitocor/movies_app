class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
    @movie.save
    redirect_to movie_path(@movie)
  end

  def create
    @movie = Movie.create(:title => params[:movie][:title], :year=> params[:movie][:year], :description=> params[:movie][:description])
    redirect_to root_path
  end

  def new
    @movie = Movie.new
  end

  def update
  end

  def destroy
  end
end


