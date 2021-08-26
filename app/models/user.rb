class User < ApplicationRecord

    has_many :strains
    has_many :reviews
    has_many :reviews, through: :strains

    has_many :growers
    has_many :growers, through: :strains

    has_secure_password

    validates :user_name, :email, presence: true
    validates :email, uniqueness: true

    def self.from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u| 
          u.email = auth['info']['email']
          u.user_name = auth['info']['name']
          u.password = SecureRandom.hex(15)
        end
    end
end
