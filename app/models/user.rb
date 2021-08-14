class User < ApplicationRecord
   
    has_many :strains, through: :reviews
    ##has_many :growers
    has_many :reviews
    ##has_many :growers, through: :strains


    validates :username, :email, presence: true
    validates :email, uniqueness: true

    has_secure_password
end
