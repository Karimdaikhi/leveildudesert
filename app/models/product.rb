class Product < ApplicationRecord
  #validates :name, presence: true
  #validates :description, presence: true
  #validates :photo, presence: true
  #validates :price, presence: true
  #validates :body_zone, presence: true
  #validates :skin_type, presence: true
  #validates :fullness, presence: true
  #validates :sexe, presence: true
  #validates :ethnicity, presence: true
  #validates :sku, presence: true
  include PgSearch
  pg_search_scope :search_by_title,
    against: [:name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
