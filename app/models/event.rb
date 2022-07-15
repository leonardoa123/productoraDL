class Event < ApplicationRecord
    validates :name, presence: :true
    validates :date_event, presence: :true
end
