class Profile < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :messages

  validates :name, presence: true
  validates :profile_type, presence: true, inclusion: { in: ["client","artist"], allow_nil: false }

  mount_uploader :picture, PhotoUploader
end
