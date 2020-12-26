class CreateStoneComments < ActiveRecord::Migration[5.2]
  def change
    create_table :stone_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :stone_image_id

      t.timestamps
    end
  end
end
