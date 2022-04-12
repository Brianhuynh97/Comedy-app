class Show < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, through: :users 
  validates :title, presence: true
end

