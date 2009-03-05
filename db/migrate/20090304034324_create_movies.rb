class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title, :null => false
      t.string :directors, :null => false
      t.string :actors, :null => false 
      t.date :release_date
      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
