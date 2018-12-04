class AddColumnSkinTypeAndBodyZoneFromProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :body_zone, :string
    add_column :products, :skin_type, :string
  end
end
