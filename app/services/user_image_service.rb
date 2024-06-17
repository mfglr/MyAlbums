require 'faraday'
require 'json'

class UserImageService
    def get_photo(id)
        JSON.parse(Faraday.get(url(id)).body)["download_url"]
    end
   
    private
        def url(id)
            "https://picsum.photos/id/#{id}/info"
        end
end