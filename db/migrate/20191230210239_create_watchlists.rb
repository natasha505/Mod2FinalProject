class CreateWatchlists < ActiveRecord::Migration[6.0]
  def change
    create_table :watchlists do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :rating
      t.string :review

      t.timestamps
    end
  end
end
