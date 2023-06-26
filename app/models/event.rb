class Event < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

end
