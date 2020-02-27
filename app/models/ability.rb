class Ability < ApplicationRecord
  belongs_to :beast
  include PgSearch::Model
  multisearchable against: [:description]
end
