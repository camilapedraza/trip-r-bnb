class Car < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, :location, :description, :price, :photos, presence: true
end
