class Product < ApplicationRecord
  belongs_to :universe
  validates :name, presence: true
  validates :description, presence: true

  mount_uploader :picture, PhotoUploader
end
