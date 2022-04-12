class Review < ApplicationRecord
  belongs_to :show
  belongs_to :user

  validates :rating, :comment, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: [0,1,2,3,4,5]
end
