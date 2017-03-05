class Table < ApplicationRecord
  belongs_to :space
  has_many :users, through: :bookings
    validates :desk_type, presence: true
  validates :price, presence: true
  has_many :bookings, dependent: :destroy


end
