class Company
    attr_reader :name, :catch_phrase, :bs

    def initialize(name, catch_phrase, bs)
        @name = name
        @catch_phrase = catch_phrase
        @bs = bs
    end

    def self.from_hash(hash)
        Company.new(hash["name"],hash["catchPhrase"],hash["bs"])
    end
end