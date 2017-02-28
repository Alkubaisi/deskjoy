class Space < ApplicationRecord
  has_attachment :photos, maximum: 4
  belongs_to :user
  has_many :desks, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :industry, presence: true
  validates :location, presence: true
  validates :company_info, presence: true
  validates :reciption, presence: true
  validates :security, presence: true
  validates :event_space, presence: true
  validates :bike_storage, presence: true
  validates :phone_booth, presence: true
  validates :kitchen, presence: true
  validates :lockers, presence: true
  validates :cafe_restaurant, presence: true
  validates :showers, presence: true
  validates :meeting_room, presence: true
  validates :hours, presence: true
  validates :wifi, presence: true
  validates :refreshment, presence: true
end
