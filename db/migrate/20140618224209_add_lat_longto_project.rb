class AddLatLongtoProject < ActiveRecord::Migration
  def change
    add_column :projects, :latitude, :float
    add_column :projects, :longitude, :float
    after_validation :geocode
  end
end
