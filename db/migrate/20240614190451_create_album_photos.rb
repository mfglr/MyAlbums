class CreateAlbumPhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :album_photos do |t|
      t.string :title
      t.string :url
      t.string :thumbnail_url
      t.belongs_to :album, index: true, foreign_key: true

      t.timestamps
    end
  end
end
