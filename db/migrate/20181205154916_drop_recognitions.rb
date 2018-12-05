class DropRecognitions < ActiveRecord::Migration[5.2]
  def change
    drop_table :recognitions
  end
end
