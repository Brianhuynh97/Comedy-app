class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :user
  has_one :review
  validates :seat_quantity, presence: true
end
