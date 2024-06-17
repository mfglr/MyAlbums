class AlbumPhoto < ApplicationRecord
  belongs_to :album

  def self.from_hash(hash)
    photo = AlbumPhoto.new
    photo.album_id = hash["albumId"]
    photo.title = hash["title"]
    photo.url = hash["url"]
    photo.thumbnail_url = hash["thumbnailUrl"]
    photo
  end

end
