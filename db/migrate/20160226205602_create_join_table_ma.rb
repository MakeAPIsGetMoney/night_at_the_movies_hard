class CreateJoinTableMa < ActiveRecord::Migration
  def change
    create_join_table :movies, :actors do |t|
      # t.index [:movie_id, :actor_id]
      # t.index [:actor_id, :movie_id]
      t.string :character
    end
  end
end
