class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :review
      t.float :rating
      t.references :movie

      t.timestamps
    end
  end
end
