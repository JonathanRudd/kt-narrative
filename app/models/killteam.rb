class Killteam < ApplicationRecord
  has_many :batreps
  has_many_attached :images
end
