class Strain < ApplicationRecord
    belongs_to :user
    belongs_to :grower
    validates :name, :category, :thc, :cbd, :rating, :notes presence: true


end
