class Place
  @@all_places = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

  define_singleton_method(:all) do
    @@all_places
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end

  # define_singleton_method(:delete) do |place|
  #   binding.pry
  #   @@all_places.delete_at(@@all_places.index(place))
  # end
end
