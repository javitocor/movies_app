class CreateJoinTableMovieTag < ActiveRecord::Migration[5.2]
  def change
    create_join_table :Movies, :Tags do |t|
      t.index [:movie_id, :tag_id]
      t.index [:tag_id, :movie_id]
    end
  end
end
