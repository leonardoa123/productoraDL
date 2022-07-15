class Event < ApplicationRecord
    validates :name, presence: :true
    validates :date_event, presence: :true


    def to_s
        self.name
    end
end
