class Concert < ApplicationRecord
  belongs_to :band
  belongs_to :event
end
