class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :introduction
      t.string :address
      t.integer :charge
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
