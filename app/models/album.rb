class Album < ApplicationRecord
  has_many :images

  # add model validation
end
