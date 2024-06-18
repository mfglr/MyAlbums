class User < ApplicationRecord
    has_many :albums, dependent: :destroy
    has_one_attached :photo
    validates :name, presence: { message: "İsim boş olamaz!" }
    validates :username,
        presence: { message: "Kullanıcı adı boş olamaz!" }, 
        uniqueness: { message: "Kullanıcı adı benzersiz olmalıdır!"}
    validates :email,
        presence: { message: "Email boş olamaz!" },
        uniqueness: { message: "Email benzersiz olmalıdır!"}

    def self.from_hash(hash)
        user = User.new
        user.name = hash["name"]
        user.username = hash["username"]
        user.email = hash["email"]
        user.phone = hash["phone"]
        user.website = hash["website"]
        user.address = Address.from_hash(hash["address"])
        user.company = Company.from_hash(hash["company"])
        user
    end

    def address=(address)
        self.address_street = address.street
        self.address_suite = address.suite
        self.address_city = address.city
        self.address_zipcode = address.zipcode
        self.address_geo_lat = address.lat
        self.address_geo_lng = address.lng
    end

    def address
        Address.new(
            self.address_street,
            self.address_suite,
            self.address_city,
            self.address_zipcode,
            Geo.new(
                self.address_geo_lat,
                self.address_geo_lng
            )
        )
    end

    def company=(other)
        self.company_name = other.name
        self.company_catch_phrase = other.catch_phrase
        self.company_bs = other.bs
    end

    def company
        Company.new(self.company_name, self.company_catch_phrase, self.company_bs)
    end

    def has_photo?
        self.photo.attached? || self.profile_photo_url.present?
    end

    def delete_photo
        self.photo.purge
        self.profile_photo_url = nil
        self.save
    end

    def format_error_messages
        self.errors.map{ |error| error.message }.join(' ')
    end
end
