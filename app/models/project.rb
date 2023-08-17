class Project < ApplicationRecord
  has_and_belongs_to_many :categories

  validates :title, presence: true, uniqueness: true, length: { minimum: 2, maximum: 255 }
  validates :subtitle, presence: true
  validates :info, presence: true, length: { minimum: 2, maximum: 255 }
  validates :picture, presence: true
  validates :size, presence: true, inclusion: { in: %w[small medium large], message: "%{value} is not a valid size" }
end
