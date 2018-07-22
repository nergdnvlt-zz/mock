class CreateBeacons < ActiveRecord::Migration[5.2]
  def change
    create_table :beacons do |t|
      t.string :location
    end
  end
end
