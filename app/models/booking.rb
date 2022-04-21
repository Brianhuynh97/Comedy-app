class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :user
  has_one :review
  validates :seat_quantity, presence: true

  def ensure_seat_qty_not_exceed_capacity
    current_capacity = show.bookings.to_a.sum(0){|booking| booking.seat_quantity}
    remaining_capacity = show.capacity - current_capacity
    errors.add(:seat_quantity, "Cannot exceed maximum capacity") if seat_quantity > remaining_capacity
  end
end
