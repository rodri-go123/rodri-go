class Project < ApplicationRecord
  has_and_belongs_to_many :categories

  validates :title, presence: true, uniqueness: true
  validates :subtitle, presence: true
  validates :info, presence: true
  validates :picture, presence: true
end
