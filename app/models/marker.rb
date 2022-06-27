class Marker < ApplicationRecord
  validates_presence_of :lng, :lat
  validates_numericality_of :lng, :lat
end
