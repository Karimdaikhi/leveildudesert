class Product < ApplicationRecord
  has_and_belongs_to_many :profiles
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :price, presence: true
end
