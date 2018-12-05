class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :recognitions
  has_many :products, through: :recognitions
  validates :age, presence: true
  validates :sexe, presence: true, inclusion: { in: ["masculine", "feminine"] }
  validates :ethnicity, presence: true, inclusion: { in: ["black or african american", "asian", "hispanic, latino, or spanish origin", " white", "american indian or alaska native", "native hawaiian or pacific islander", "middle eastern or north african"] }
end
