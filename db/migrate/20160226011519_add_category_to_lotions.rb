class AddCategoryToLotions < ActiveRecord::Migration
  def change
    add_column :lotions, :category, :string
  end
end
