module PlacesHelper

  def get_place_telephone(id)
    Place.find(id).telephone.to_s
  end

  def get_place_address(id)
    place = Place.find(id)
    "#{place.street} #{place.place_nr}/#{place.flat_nr}"
  end

end
