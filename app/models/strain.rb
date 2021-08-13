class Strain < ApplicationRecord
    has_many :forms
    belongs_to :user
    belongs_to :grower
    
end
