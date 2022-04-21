class Show < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, length: { in: 6..600 }
  validates :price, :comedian, :location, :datetime, :capacity, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
