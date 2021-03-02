class AddPlaceToStoneImages < ActiveRecord::Migration[5.2]
  def change
    add_column :stone_images, :place, :string
  end
end
