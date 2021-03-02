class AddFeatureToStoneimages < ActiveRecord::Migration[5.2]
  def change
    add_column :stone_images, :feature, :string
  end
end
