class Space < ApplicationRecord
  belongs_to :user
  has_many :desks, dependent: :destroy

  validates :photo, presence: true





end
