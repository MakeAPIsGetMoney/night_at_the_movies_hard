class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :album
      t.string :year
      t.string :genre
      t.integer :popularity
      t.text :artists

      t.timestamps null: false
    end
  end
end
