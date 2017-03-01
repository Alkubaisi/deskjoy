class Space < ApplicationRecord
  has_attachments :photos, maximum: 4

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

  belongs_to :user
  has_many :desks, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :location, presence: true
  validates :industry, presence: true, inclusion: { in: INDUSTRYLIST }

  validates :company_info, presence: true
  validates :photos, presence: true
end
