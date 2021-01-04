class Artwork < ApplicationRecord
  belongs_to :collection
  has_one_attached :photo
end
