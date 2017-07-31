class Room < ApplicationRecord
	belongs_to :host
	mount_uploader :image, ImageUploader
end
