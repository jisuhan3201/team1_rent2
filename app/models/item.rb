class Item < ApplicationRecord
  belongs_to :user
  has_many :requests
  mount_uploader :image, ImageUploader
end
