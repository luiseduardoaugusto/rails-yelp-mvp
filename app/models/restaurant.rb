class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, presence: true
  validates :name, presence: true
  validates :category, presence: true
  validates :category, acceptance: { accept: %w[chinese french italian japanese belgian] }
end
