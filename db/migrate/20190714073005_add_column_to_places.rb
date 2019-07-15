class AddColumnToPlaces < ActiveRecord::Migration[5.0]
  def up
      change_column :places, :train, :string, null: false
      change_column :places, :station, :string, null: false
      change_column :places, :walk, :integer, null: false
      change_column :places, :room_id, :integer, null: false
    end

    def down
      change_column :places, :train, :string
      change_column :places, :station, :string
      change_column :places, :walk, :integer
      change_column :places, :room_id, :integer
    end
end
