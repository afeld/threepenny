class AddGeodataToCountries < ActiveRecord::Migration
  def self.up
    add_column :countries, :latitude, :float
    add_column :countries, :longitude, :float
  end

  def self.down
    remove_column :countries, :longitude
    remove_column :countries, :latitude
  end
end
