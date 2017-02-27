class Space < ApplicationRecord
  belongs_to :user
  has_many :desks, dependent: :destroy
  validate :name, presence: true
  validate :address, presence: true
  validate :industry, presence: true
  validate :location, presence: true
  validate :company_info, presence: true
  validate :reciption, presence: true
  validate :security, presence: true
  validate :event_space, presence: true
  validate :bike_storage, presence: true
  validate :phone_booth, presence: true
  validate :kitchen, presence: true
  validate :lockers, presence: true
  validate :cafe_restaurant, presence: true
  validate :showers, presence: true
  validate :meeting_room, presence: true
  validate :hours, presence: true
  validate :wifi, presence: true
  validate :refreshment, presence: true
end
