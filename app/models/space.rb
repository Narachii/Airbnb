class Space < ApplicationRecord
	has_many :rooms
	has_many :space_rooms
	accepts_nested_attributes_for :space_rooms
end
