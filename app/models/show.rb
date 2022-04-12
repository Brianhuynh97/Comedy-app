class Show < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :shows

end
