class Batrep < ApplicationRecord
  belongs_to :killteam
  has_one :warzone
end
