class User < ApplicationRecord
    has_secure_password
    has_many :strains
    has many :growers, through: :strains
end
