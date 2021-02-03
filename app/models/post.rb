class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :photo
  has_rich_text :rich_body

  validates :title, presence: true, length: { maximum: 70 }
  validates :subtitle, presence: true, length: { maximum: 225 }

end
