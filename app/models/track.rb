class Track < ApplicationRecord

  validates :track_id,:title, :artist, :genre, :duration,:image_path, :song_path, presence:true
  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}")
    else
      all
    end
  end
end
