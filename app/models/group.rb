class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy

    def cant_concerts
        self.concerts.size
    end

    def cant_audience
        self.concerts
    end


end
