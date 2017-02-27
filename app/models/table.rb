class Table < ApplicationRecord
  belongs_to :space
  has_many :users, through: :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :price, presence: true


end
