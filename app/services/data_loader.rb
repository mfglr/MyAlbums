class DataLoader
    def initialize
      @user_service = UserService.new
      @user_image_service = UserImageService.new
      @album_service = AlbumService.new
      @album_photo_service = AlbumPhotoService.new
    end

    def load
        ActiveRecord::Base.transaction do
            users = @user_service.get_all
            users.each_with_index do |user,index|
                user.profile_photo_url = format_profile_photo_url(@user_image_service.get_photo(index + 1),125)
                user.save
            end
            
            albums = @album_service.get_all
            albums.each do |album|
                album.save
            end

            photos = @album_photo_service.get_all
            photos.each do |photo|
                photo.save
            end
        end
    end

    private
        def format_profile_photo_url(url, diameter)
            partials = url.split("/")
            partials[partials.length - 2] = partials[partials.length - 1] = diameter
            partials.join("/")
        end
end