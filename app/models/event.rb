class Event < ApplicationRecord
    validates :name, presence: :true
    validates :date_event, presence: :true

    has_many :concerts, dependent: :destroy

    has_many :bands, through: :concerts, dependent: :destroy

    def to_s
        self.name
    end
end
