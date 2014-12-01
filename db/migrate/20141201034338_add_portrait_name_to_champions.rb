class AddPortraitNameToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :portrait, :string
  end
end
