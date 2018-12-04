class RemoveSkinTypeFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :skin_type
  end
end
