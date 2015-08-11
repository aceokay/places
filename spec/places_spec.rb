require('rspec')
require('places')
require('pry')

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

  # describe('.delete') do
  #   it('deletes a specified location') do
  #     test_place1 = Place.new('Oklahoma').save()
  #     test_place2 = Place.new('Nebraska').save()
  #     test_place3 = Place.new('South Dakota').save()
  #     Place.delete('Nebraska')
  #     expect(Place.all()).to(eq([test_place1,test_place2]))
  #   end
  # end
end
