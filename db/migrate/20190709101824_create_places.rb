class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :train
      t.string :station
      t.integer :walk
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
