class AlbumPhotoService < JsonPlaceholderService

    def get_by_id(id)
        AlbumPhoto.from_hash(super(@@url, id))
    end

    def get_all
        super(@@url).map{ |hash| AlbumPhoto.from_hash(hash) }
    end

    def get_all_page_by_page(page)
        super(@@url, page, @@records_per_page).map{ |hash| AlbumPhoto.from_hash(hash) }
    end

    def get_by_album_id(album_id)
        get_by_field(@@url, "albumId", album_id).map{ |hash| AlbumPhoto.from_hash(hash) }
    end

    private
        @@url = "photos"
        @@records_per_page = 10
        
end