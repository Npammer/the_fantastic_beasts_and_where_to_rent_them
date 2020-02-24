class Beast < ApplicationRecord
  belongs_to :user

  validates :name, :category, :price, :location, presence: true
  validates :dangerousness, presence: true, inclusion: {in: [1,2,3,4,5]}
  has_many :reviews, through: :bookings
end
