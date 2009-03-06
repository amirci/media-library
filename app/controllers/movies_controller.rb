class MoviesController < ApplicationController

  def index
    @movies = Movie.find( :all, :order => "created_at, id desc" )
  end
	
end
