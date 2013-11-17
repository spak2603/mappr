class PlacesController < ApplicationController
	def index
		@place = Place.last
		# this is going to be one of the rows on the database - the latest one
	end

	def new 
		 @place = Place.new
	end

	def create
		# Place.create( :title => 'omg',...)
		@place = Place.create( place_params )
		redirect_to root_path
	end

	private
	def place_params
		params.require(:place).permit(:title,:address)
	end


end
