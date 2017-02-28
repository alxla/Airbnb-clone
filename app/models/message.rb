class Message < ApplicationRecord
  belongs_to :request
  belongs_to :profile
  validates :title, presence: true
  validates :body, presence: true
end
