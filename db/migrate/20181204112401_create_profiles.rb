class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :sexe
      t.string :ethnicity
      t.string :body_zone
      t.string :skin_type
      t.string :life_condition

      t.timestamps
    end
  end
end
