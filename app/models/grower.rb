class Grower < ApplicationRecord
  belongs_to :user
  belongs_to :form
  has_many :strains
  has_many :users, through: :forms
end
