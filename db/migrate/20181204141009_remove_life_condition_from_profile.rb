class RemoveLifeConditionFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :life_condition
  end
end
