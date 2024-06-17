class Geo
    attr_reader :lat, :lng
    
    def initialize(lat, lng)
      @lat = lat
      @lng = lng
    end

    def self.from_hash(hash)
      Geo.new(hash["lat"], hash["lng"])
    end
end