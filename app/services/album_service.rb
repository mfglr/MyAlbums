class AlbumService < JsonPlaceholderService
    def get_by_id(id)
        Album.from_hash(super(@@url, id))
    end

    def get_all
        super(@@url).map{ |hash| Album.from_hash(hash) }
    end

    def get_all_page_by_page(page)
        super(@@url, page, @@records_per_page).map{ |hash| Album.from_hash(hash) }
    end

    def get_by_user_id(user_id)
        get_by_field(@@url,"userId",user_id).map{ |hash| Album.from_hash(hash) }
    end
    
    private
        @@url = "albums"
        @@records_per_page = 10
end