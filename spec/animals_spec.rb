require_relative('../animals')

describe "doing the hw :(" do
  describe "animal class testing" do

    let(:animal) {Animal.new("Kiko", 3)}

    it "should have a property called name" do
      expect(animal.name == "Kiko").to be true
    end

    it "should have a property called age" do
      expect(animal.age == 3).to be true
    end

    it "should have a property called sleeping, which should have a default value of true" do
      expect(animal.sleeping == true).to be true
    end

    it "should have an instance method called wake_up which changes sleeping to false" do
      expect(animal.wake_up.sleeping == false).to be true
    end

    it "should have an nstance method called go_to_sleep which changes sleeping to true" do
      expect(animal.wake_up.go_to_sleep.sleeping == true).to be true
    end

    it "should have an instance method called feed which returns 'NOM NOM NOM' if the animal is not sleeping" do
      expect(animal.feed == "NOM NOM NOM").to be false
      expect(animal.wake_up.feed == "NOM NOM NOM").to be true
    end
  end

  describe "dog class testing" do

    let(:dog) {Dog.new("Sutro", 1)}

    it "should inherit from Animal" do
      expect(dog.name == "Sutro").to be true
    end

    it "has a class variable called favorite_treats which is an array of treats" do
      expect(Dog.favorite_treats == ['dog', 'bone', 'toy', 'cat']).to be true
    end

    it "has an instance variable called favorite treat which is a random item in the favorite_treats array" do
      expect(Dog.gets_treats).to include(dog.favorite_treat)
    end

    it "has an instance method called woof which returns 'WOOF' if sleeping is not false" do
      expect(dog.woof == "WOOF").to be false
      expect(dog.wake_up.woof == "WOOF").to be true
    end

    it "has a class method which adds to the favorite_treats array" do
      expect(Dog.add_treat('bone').gets_treats).to include('bone')
    end

  end

  describe "cat class testing" do

    let(:cat) {Cat.new("Jamal", 9)}

    it "should inherit from Animal" do
      expect(cat.name).to eq "Jamal"
    end

    it "has an instance method called meow which returns 'MEOW' if sleeping is not false" do
      expect(cat.meow == "MEOW").to be false
      expect(cat.wake_up.meow == "MEOW").to be true
    end

  end
end



