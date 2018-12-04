class RemoveBodyZoneFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :body_zone
  end
end
