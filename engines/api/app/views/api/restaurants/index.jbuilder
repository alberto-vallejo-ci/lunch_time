json.array @restauransts do |restaurant|
  json.name restaurant.name
  json.address restaurant.address
  json.phone restaurant.telephone
  json.average_rate restaurant.average_rate
  json.average_cost restaurant.average_cost
  json.comments restaurant.comments
end
