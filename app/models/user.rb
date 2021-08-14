class User < ApplicationRecord
   
    has_many :strains
    has many :strain_forms, through: strains, source: :forms
    has_many :growers

    validates :username, :email, presence: true
    validates :email, uniqueness: true

    has_secure_password
end
