class UserService < JsonPlaceholderService
    
    def get_by_id(id)
        User.from_hash(super(@@url, id))
    end

    def get_all_page_by_page(page)
        super(@@url, page, @@records_per_page).map{ |hash| User.from_hash(hash) }
    end

    def get_all
        super(@@url).map{ |hash| User.from_hash(hash) }
    end

    private
        @@url = "users"
        @@records_per_page = 10

end