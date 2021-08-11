class CreateMoviesGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :movies_genres, id: false do |t|
      t.belongs_to :movie
      t.belongs_to :genre

      t.timestamps
        
    end

    create_table :genres_movies, id: false do |t|
      t.belongs_to :movie
      t.belongs_to :genre

      t.timestamps

    end
  end
end
