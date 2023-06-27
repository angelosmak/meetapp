class Event < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  has_many :ratings, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_one_attached :photo
end
