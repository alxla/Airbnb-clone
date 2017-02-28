class Universe < ApplicationRecord
  belongs_to :profile
  has_many :products
  validates :name, presence: true
end
