class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :beast

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true

  # has_one :user
  has_many :reviews
end
