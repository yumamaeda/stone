class AddChangeToStoneImages < ActiveRecord::Migration[5.2]
  def change
    add_column :stone_images, :change, :string
  end
end
