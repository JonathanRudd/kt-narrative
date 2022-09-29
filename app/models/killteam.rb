class Killteam < ApplicationRecord
  has_many :batreps, dependent: :destroy
  has_many_attached :images
end
