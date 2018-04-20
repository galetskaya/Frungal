class Image < ApplicationRecord
  belongs_to :album
  # add model validation
  # dependent destroy
end
