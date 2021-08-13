class Grower < ApplicationRecord
    has_many :strains
    has_many :users, through: :strains

    def strains_attributes=(strains_attributes)
        strains_attributes.values.each do |strain|
          if !strain[:name].empty?
            self.strains << Strain.find_or_create_by(name: strain[:name])
          end
        end
      end
end
