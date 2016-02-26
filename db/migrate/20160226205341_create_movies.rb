class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :runtime
      t.string :url_poster
      t.string :imdb_id
      t.text :simple_plot

      t.timestamps null: false
    end
  end
end
