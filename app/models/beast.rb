class Beast < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  validates :name, :category, :price, presence: true
  validates :dangerousness, presence: true, inclusion: {in: [1,2,3,4,5]}
  has_many :reviews, through: :bookings
end
