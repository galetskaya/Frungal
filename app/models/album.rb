class Album < ApplicationRecord
  has_many :images, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
end
