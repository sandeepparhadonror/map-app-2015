class Location < ActiveRecord::Base

  #attr_accessible :address, :description, :latitude, :longitude, :user_id

  belongs_to :user
  has_many :pictures , as: :imageable

  geocoded_by :address
  after_validation :geocode, :if => :address_changed? 

end
