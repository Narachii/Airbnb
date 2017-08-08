class Room < ApplicationRecord
	belongs_to :host
	has_many :amenity_rooms
	has_many :space_rooms
	has_many :amenities, through: :amenity_rooms
	has_many :spaces, through: :space_rooms
	mount_uploader :image, ImageUploader
	geocoded_by :address, :latitude  => :lattitude, :longitude => :longitude
	after_validation :geocode, if: :city_changed?
	def address
  [street_address,city, state, country].compact.join(', ')
	end
end

