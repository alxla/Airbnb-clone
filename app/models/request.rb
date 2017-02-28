class Request < ApplicationRecord
  belongs_to :product
  belongs_to :profile_client, class_name: 'Profile', foreign_key: 'profile_id'
  belongs_to :profile_artist, class_name: 'Profile', foreign_key: 'profile_artist_id'
end
