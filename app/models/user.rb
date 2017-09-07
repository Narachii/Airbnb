class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence:true,uniqueness:true
   has_one :host
   has_many :messages
   has_many :reservations
   mount_uploader :image, ImageUploader
end
