class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.string :artist
      t.string :song_path
      t.string :image_path
      t.string :genre
      t.references :user, null: false, foreign_key: false

      t.timestamps
    end
  end
end
