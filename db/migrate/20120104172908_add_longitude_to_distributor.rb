class AddLongitudeToDistributor < ActiveRecord::Migration
  def change
    add_column :distributors, :longitude, :float
    add_column :distributors, :latitude, :float
  end
end
