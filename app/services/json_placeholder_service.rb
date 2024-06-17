require 'faraday'
require 'json'

class JsonPlaceholderService

    protected
        #https://jsonplaceholder.typicode.com/{url}/{id}
        def get_by_id(url, id)
            JSON.parse(Faraday.get("#{@@base_url}/#{url}/#{id}").body)
        end

        #https://jsonplaceholder.typicode.com/{url}
        def get_all(url)
            JSON.parse(Faraday.get("#{@@base_url}/#{url}").body)
        end
        
        #https://jsonplaceholder.typicode.com/{url}?_start={page * records_per_page}&_limit={records_per_page}
        def get_all_page_by_page(url, page, records_per_page)
            JSON.parse(Faraday.get("#{@@base_url}/#{url}?#{pagination_query(page, records_per_page)}").body)
        end

        #https://jsonplaceholder.typicode.com/{url}?_{field}={value}
        def get_by_field(url, field, value)
            JSON.parse(Faraday.get("#{@@base_url}/#{url}?#{field}=#{value}").body)         
        end
    
    private

        @@base_url = "https://jsonplaceholder.typicode.com"

        def pagination_query(page, records_per_page)
            "_start=#{page * records_per_page}&_limit=#{records_per_page}"
        end
end