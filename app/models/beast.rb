class Beast < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :abilities, dependent: :destroy
  has_many :reviews, through: :bookings

  has_one_attached :photo
  validates :name, :category, :price, presence: true
  validates :dangerousness, presence: true, inclusion: {in: [1,2,3,4,5]}

end
