class Strain < ApplicationRecord
    belongs_to :user
    belongs_to :grower
    has_many :forms
    has_many :users, through :forms

    
end
