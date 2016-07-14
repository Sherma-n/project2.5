json.merge! plan.attributes
json.itineraries plan.itineraries do |itinerary|
  json.merge! itinerary.attributes
  json.items itinerary.items
end