class Album < ApplicationRecord
  belongs_to :user
  has_many :album_photos, dependent: :destroy
  
  def self.from_hash(hash)
    album = Album.new
    album.user_id = hash["userId"]
    album.title = hash["title"]
    album
  end
end