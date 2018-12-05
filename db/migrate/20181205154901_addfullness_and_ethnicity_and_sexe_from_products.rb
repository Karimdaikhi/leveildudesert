class AddfullnessAndEthnicityAndSexeFromProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :fullness, :string
    add_column :products, :ethnicity, :string
    add_column :products, :sexe, :string
  end
end
