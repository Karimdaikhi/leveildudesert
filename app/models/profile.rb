class Profile < ApplicationRecord
  has_and_belongs_to_many :products
  validates :age, presence: true
  validates :sexe, presence: true, inclusion: { in: ["masculine", "feminine"] }
  validates :ethnicity, presence: true, inclusion: { in: ["black or african american", "asian", "hispanic, latino, or spanish origin", " white", "american indian or alaska native", "native hawaiian or pacific islander", "middle eastern or north african"] }
  validates :body_zone, inclusion: { in: ["Visage", "Corps", "Mains", "Buste"] }
  validates :skin_type, inclusion: { in: [ "Peau sèche", "Peau normale", "Peau grasse", "Peau mature"] }
end
