class Address
    attr_reader :street, :suite, :city, :zipcode, :lat, :lng
    
    def initialize(street, suite, city, zipcode, geo)
        @street = street
        @suite = suite
        @city = city
        @zipcode = zipcode
        @lat = geo.lat
        @lng = geo.lng
    end

    def geo=(geo)
        @lat = geo.lat
        @lng = geo.lng
    end
    
    def geo
        Geo.new(@lat, @lng)
    end

    def self.from_hash(hash)
        Address.new(
            hash["street"],
            hash["suite"],
            hash["city"],
            hash["zipcode"],
            Geo.from_hash(hash["geo"])
        )
    end
end