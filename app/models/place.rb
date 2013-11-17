class Place < ActiveRecord::Base

	# before saving to the database, do the geocode method is what the following says
	before_save :geocode

	def geocode
		loc = Geokit::Geocoders::GoogleGeocoder3.geocode( self.address )
		self.lat = loc.lat
		self.lng = loc.lng
	end


end
