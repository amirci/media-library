class MoviesController < ApplicationController

  def index
    @movies = Movie.find( :all )
    logger.info( "Returned all the movies #{@movies.length}")
  end
	
end
