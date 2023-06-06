class Car < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :name, :location, :description, :price, presence: true
end
