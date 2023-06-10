class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :user, :car, :starting_date, :ending_date, presence: true
  validates :starting_date, comparison: {
    greater_than_or_equal_to: Date.today,
    message: "Start date must be in the future"
  }
  validates :ending_date, comparison: {
    greater_than_or_equal_to: :starting_date,
    message: "End date must be on or after start date"
  }
end
