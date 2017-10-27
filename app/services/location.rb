class Location
  # return { latitude: x.x, longitude: x.x }
  def coordinates(address)
    coord = Geocoder.coordinates(address)
    coord.nil? ? coordinates(address) : coord
  end
end