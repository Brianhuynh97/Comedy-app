class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  has_many :shows, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :bookings
  # has_attachment :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
