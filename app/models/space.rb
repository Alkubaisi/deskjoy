class Space < ApplicationRecord
  INDUSTRYLIST = ["Advertising and marketing",
    "Architecture",
    "Crafts",
    "Product Design",
    "Graphic Design",
    "Fashion Design",
    "Film, TV, video, radio",
    "Art & photography",
    "IT & Software",
    "Writer",
    "Music",
    "Performing and visual arts"
  ]

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  has_many :tables, dependent: :destroy

  validates :company_name, presence: true
  validates :address, presence: true
  validates :industry, presence: true, inclusion: { in: INDUSTRYLIST }

  validates :company_info, presence: true
  # validates :photos, presence: true

  has_attachments :photos, maximum: 3
end
