class AddColumnToBeacons < ActiveRecord::Migration[5.2]
  def change
    add_column :beacons, :lat, :float
    add_column :beacons, :long, :float
    remove_column :beacons, :location, :string
  end
end
