class CreateMoviesActors < ActiveRecord::Migration[6.1]
  def change
    create_table :movies_actors, id: false do |t|
      t.belongs_to :movie
      t.belongs_to :actor

      t.timestamps
    end

    create_table :actors_movies, id: false do |t|
      t.belongs_to :movie
      t.belongs_to :actor

    end
  end
end
