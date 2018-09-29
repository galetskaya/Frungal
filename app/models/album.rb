class Album < ApplicationRecord
  validates :name, presence: true

  has_one_attached :cover
  has_many_attached :photos
end
