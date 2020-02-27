class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PgSearch::Model
  multisearchable against: [:email, :fullname]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :fullname, presence: true
  # validates :bio, presence: true

  has_many :bookings
  has_many :beasts
  has_one_attached :photo

end
