class AlterPlacesAddingLatAndLng < ActiveRecord::Migration
  def change
  	# lat long is a decimal
  	# Need to use a special decimal thing for the lat long --> but it's moving a lil bit if you use only decimal
		add_column :places, :lat, :decimal, {:precision=>10, :scale=>6}
		add_column :places, :lng, :decimal, {:precision=>10, :scale=>6}


  end
end
