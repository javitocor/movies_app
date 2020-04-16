class CreateJoinTableMoviesTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :movies, :tags do |t|
      t.index :movie_id
      t.index :tag_id
    end
  end
end
