class Animal

  attr_accessor :name, :age, :sleeping

  def initialize(name,age)
    @name = name
    @age = age
    @sleeping = true 
  end

  def wake_up
    @sleeping = false
    self
  end

  def go_to_sleep
    @sleeping = true
    self
  end

  def feed
    if !@sleeping
      "NOM NOM NOM"
   end
  end

end



class Dog < Animal

  attr_accessor :favorite_treat

  @@favorite_treats = ['dog', 'bone', 'toy', 'cat']

  def self.favorite_treats
    @@favorite_treats
  end

  def initialize name, age
    super name, age
    @favorite_treat = @@favorite_treats.sample
  end

  def woof
    if !sleeping
      "WOOF"
    end
  end

  def self.add_treat(treat)
    @@favorite_treats << treat
    self
  end

  def self.gets_treats
    @@favorite_treats
  end

end

class Cat < Animal

  def meow
    if !@sleeping
      "MEOW"
    end
  end
end



