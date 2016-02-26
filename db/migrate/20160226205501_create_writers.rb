class CreateWriters < ActiveRecord::Migration
  def change
    create_table :writers do |t|
      t.string :name
      t.string :imdb_id

      t.timestamps null: false
    end
  end
end
