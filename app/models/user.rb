class User < ApplicationRecord

    has_many :reviews
    has_many :strains, through: :reviews

    has_many :growers
    has_many :growers, through: :strains

    validates :user_name, :email, presence: true
    validates :email, uniqueness: true

    has_secure_password
end
