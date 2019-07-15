class AddColumnNotNUll < ActiveRecord::Migration[5.0]
  def up
      change_column :rooms, :name, :string, null: false
      change_column :rooms, :price, :integer, null: false
      change_column :rooms, :address, :string, null: false
      change_column :rooms, :age, :integer, null: false
      change_column :rooms, :comment, :string, null: false
    end

    def down
      change_column :rooms, :name, :string
      change_column :rooms, :price, :integer
      change_column :rooms, :address, :string
      change_column :rooms, :age, :integer
      change_column :rooms, :comment, :string
    end
end
