json.extract! concert, :id, :band_id, :event_id, :q_audience, :description, :duration, :created_at, :updated_at
json.url concert_url(concert, format: :json)
