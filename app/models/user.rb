class User < ApplicationRecord
   
    has_many :strains
    has many :strain_forms, through: strains, source: :forms

    has_many :growers

    has_secure_password
end
