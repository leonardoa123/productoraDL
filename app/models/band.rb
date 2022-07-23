class Band < ApplicationRecord
    validates :name, presence: :true
    validates :date_debut, presence: :true

    enum type_band: [:boys_band, :girl_band, :mix_band, :singer_band]

    has_many :concerts, dependent: :destroy

    def to_s
        self.name
    end

    # mostrar la cantidad de conciertos de cada banda
    def q_concerts
        self.concerts.count
    end

    # mostrar la fecha del primer concierto de cada banda

    def date_debut_dl
        if self.concerts.present?
            "#{self.concerts.first.event.name} #{self.concerts.first.event.date_event.strftime("%d/%m/%Y")}"
        else
            "--NO DEBUT IN DL--"
        end
    end


    #  mostrar la cantidad total de asistentes (suma de todos los asistentes a los conciertos de cada banda)
    def q_total_audience
        if self.concerts.present?
            self.concerts.sum(:q_audience)
        else
            0
        end
    end

    # mostrar cantidad de conciertos del mes en curso
    def q_concerts_month
        cant = 0
        if self.concerts.present?
            self.concerts.each do |concert|
                cant += 1 if concert.event.date_event.strftime("%m").to_i == Time.now.month
            end
        end
        cant
    end
    # último concierto con formato de fecha “Año - Mes en palabras - día en palabras
    def last_concert
        if self.concerts.present?
            "#{self.concerts.last.event.date_event.strftime("%d/%m/%Y")}"
        else
            "--NO CONCERT--"
        end
    end

end
