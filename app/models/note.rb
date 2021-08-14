class Note < ActiveRecord::Base
    has_many :growers

    validates :name, presence: true

end

