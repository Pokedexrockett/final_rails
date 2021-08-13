class Form < ActiveRecord::Base
    has_many :strain_forms
    has_many :strains, through: :strain_forms
  end