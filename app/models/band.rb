class Band < ApplicationRecord
    validates :name, presence: :true
    validates :date_debut, presence: :true

    enum type_band: [:boys_band, :girl_band, :mix_band, :singer_band]

    has_many :concerts, dependent: :destroy

    def to_s
        self.name
    end
end
