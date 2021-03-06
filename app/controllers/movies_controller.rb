class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      flash[:success] = "Movie '#{@movie.title}' Created!" 
      redirect_to root_path
    else
      render :new
      flash[:danger] = "#{@movie.errors}"
    end
  end

  def new
    @movie = Movie.new
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movie_path(@movie)
      flash[:success] = "Movie '#{@movie.title}' Updated!"  
    else
      render :edit 
      flash[:danger] = "#{@movie.errors}"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.delete
    flash[:success] = "Movie '#{@movie.title}' Deleted!"  
    redirect_to root_path
  end

  def searcher
    @movie = Movie.ci_find("title", params[:search])

    if @movie
      redirect_to @movie
    else      
      flash[:danger] = "Movie not found, but you can add it!!"
      redirect_to root_path
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :description, :tag_list, images: [])
  end
end


