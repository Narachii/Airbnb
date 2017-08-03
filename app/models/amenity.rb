class Amenity < ApplicationRecord
	has_many :rooms
	has_many :amenity_rooms
	accepts_nested_attributes_for :amenity_rooms
end
