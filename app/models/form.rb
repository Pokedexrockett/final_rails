class Form < ActiveRecord::Base
    has_many :growers

    validates :name, presence: true

end

