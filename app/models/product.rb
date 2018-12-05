class Product < ApplicationRecord
  has_many :recognitions
  has_many :profiles, through: :recognitions
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :body_zone, presence: true, inclusion: { in: ["Visage", "Mains", "Buste", "Corps"] }
  validates :skin_type, presence: true, inclusion: { in: ["Peau sèche", "Peau normale", "Peau grasse", "Peau mature"] }
end
