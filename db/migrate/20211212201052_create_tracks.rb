class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.string :image_path
      t.string :song_path
      t.integer :duration
      t.timestamps
    end
  end
end
