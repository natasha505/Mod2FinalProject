class CreateMovActors < ActiveRecord::Migration[6.0]
  def change
    create_table :mov_actors do |t|
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
