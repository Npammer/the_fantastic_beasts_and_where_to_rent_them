class Beast < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :abilities, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, :category, :price, presence: true
  validates :dangerousness, presence: true, inclusion: {in: [1,2,3,4,5]}

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
