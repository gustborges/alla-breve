class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {maximum: 140}
  validates :subtitle, presence: true, length: {maximum: 200}
  validates :text, presence: true
end
