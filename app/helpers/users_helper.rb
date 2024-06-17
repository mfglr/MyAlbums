module UsersHelper
    def get_user_photo_url(user)
        user.photo.attached? ? 
            rails_blob_url(user.photo) : 
            user.profile_photo_url.present? ?
                user.profile_photo_url :
                "/assets/no_image.png" 
    end
end
