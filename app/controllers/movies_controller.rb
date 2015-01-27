class MoviesController < ApplicationController
  def welcome
  end

  def all
    @movies = Movie.all
    render json: @movies
  end

  def search
    if params[:y]
      @movie = Movie.where(:year => params[:y])
    elsif params[:t]
    @movie = Movie.where(:title => params[:t])
  end
    render json: @movie
  end
end
