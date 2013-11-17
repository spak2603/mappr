class PlacesController < ApplicationController
	def index
		@place = Place.last
		# this is going to be one of the rows on the database - the latest one
	end
end
