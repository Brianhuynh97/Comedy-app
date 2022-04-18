class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :shows
  has_many :reviews, through: :bookings
  has_many :bookings
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
