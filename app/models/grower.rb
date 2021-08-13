class Grower < ApplicationRecord
    has_many :strains
    has_many :users, through: :strains
end
