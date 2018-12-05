class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :body_zone, presence: true
  validates :skin_type, presence: true
  validates :fullness, presence: true
  validates :sexe, presence: true
  validates :ethnicity, presence: true
end
