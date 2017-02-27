class Table < ApplicationRecord
  belongs_to :space
  has_many :users, through: :bookings

end
