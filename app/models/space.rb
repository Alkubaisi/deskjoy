class Space < ApplicationRecord
  has_attachments :photos, maximum: 4
  belongs_to :user
  has_many :desks, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :industry, presence: true

  validates :company_info, presence: true
    validates :photos, presence: true

end
