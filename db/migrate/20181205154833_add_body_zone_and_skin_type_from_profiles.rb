class AddBodyZoneAndSkinTypeFromProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :body_zone, :string
    add_column :profiles, :skin_type, :string
  end
end
