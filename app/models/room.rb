class Room < ApplicationRecord
	belongs_to :host
	has_many :amenity_rooms
	has_many :space_rooms
	has_many :amenities, through: :amenity_rooms
	has_many :spaces, through: :space_rooms
	mount_uploader :image, ImageUploader
end
