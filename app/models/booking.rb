class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :desk


  validates :table, uniqueness: { scope: :user }
  validates :price, presence: true

#We will want to adapt this when we are further along.
  # validate :duration_cannot_be_in_the_past
  # def expiration_date_cannot_be_in_the_past
  #   errors.add(:from, "can't be in the past") if
  #     !from.blank? and from < Date.today
  # end
end
