require('rspec')
require('class_variable')

describe('Place') do
  before() do
    Place.clear()
  end
  describe('#name') do
    it("lets you read the description out") do
      test_place = Place.new("Seattle")
      expect(test_place.name()).to(eq("Seattle"))
    end
  end
  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("adds a place to the array of saved tasks") do
      test_place = Place.new("Seattle")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end
  describe(".clear") do
    it("empties out all of the saved places") do
      Place.new("Seattle").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
