# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def factoryOfMarkers(n)
  markers = []

  while n > 0
    markers.push(
      {
        lat: n * 123.567890,
        lng: n * 77.7689354
      }
    )
    n = n - 1
  end

  return markers
end

markers = factoryOfMarkers(5)

markers.each do | marker |
  Marker.find_or_create_by!(marker)
end
