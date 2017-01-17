class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.text :actor
      t.text :actress
      t.text :descrption

      t.timestamps
    end
  end
end
