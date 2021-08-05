class User < ApplicationRecord
    has_many :strains
    has many :growers, through: :strains
end
