class CreateLotions < ActiveRecord::Migration
  def change
    create_table :lotions do |t|
      t.string :name
      t.string :image_url
      t.timestamps
    end
  end
end
