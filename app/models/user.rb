class User < ApplicationRecord

    has_many :reviews
    has_many :user_strains, through: :reviews, source: :strain

    has_many :growers
    has_many :growers, through: :strains

    has_secure_password

    validates :user_name, :email, presence: true
    validates :email, uniqueness: true

      def self.create_by_github_omniauth(auth)
        self.find_or_create_by(username: auth[:info][:email]) do |u|
        u.email = auth[:info][:email]  
        u.password = SecureRandom.hex
  
      end
    end

end
