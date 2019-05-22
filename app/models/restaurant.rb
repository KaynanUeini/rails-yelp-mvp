class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
