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

  belongs_to :user
  has_many :tables, dependent: :destroy

  validates :company_name, presence: true
<<<<<<< HEAD
=======

>>>>>>> f091e429d301ac65c993e1cf8f532a8eb975acb3
  validates :address, presence: true
  validates :industry, presence: true, inclusion: { in: INDUSTRYLIST }

  validates :company_info, presence: true
  # validates :photos, presence: true

  has_attachments :photos, maximum: 4
end
