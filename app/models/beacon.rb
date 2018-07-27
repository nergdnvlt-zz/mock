class Beacon < ApplicationRecord
  validates_presence_of :lat, :long

  def location
    [lat, long]
  end
  
end
