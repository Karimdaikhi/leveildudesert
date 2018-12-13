class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :firstname
      t.string :adress
      t.string :city
      t.string :zipcode
      t.text :comment
      t.string :email
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
