class Itinerary < ActiveRecord::Base
  belongs_to :plan
  has_many :items
end
