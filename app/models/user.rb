class User < ApplicationRecord
   
    has_many :strains
    has many :growers, through: :strains

    has_secure_password
end
