require('rspec')
require('places')

describe(Place) do
  describe('#location') do
    it('lets you enter a location') do
      test_place = Place.new('kansas')
      expect(test_place.location()).to(eq('kansas'))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a place to the array of saved places') do
      test_place = Place.new('kansas')
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe('.clear') do
    it('empties all places saved') do
      Place.new('kentucky').save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
