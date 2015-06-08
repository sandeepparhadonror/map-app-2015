class Location < ActiveRecord::Base
  
  #attr_accessible :address, :description, :latitude, :longitude, :user_id

  belongs_to :user

  geocoded_by :address
  after_validation :geocode, :if => :address_changed? , :if => :changed?

end
