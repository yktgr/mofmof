class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :price
      t.string :address
      t.integer :age
      t.string :comment
      t.timestamps
    end
  end
end
