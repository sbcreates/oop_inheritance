require 'pry'

class System

  @@bodies = []
  @@total_mass = 0

# starting out we will have no bodies in our system and total mass is 0
  def initialize

  end

# reader
  def self.bodies
    @@bodies
  end

# instance method which will add a celestial body to the list
  def self.add(new_body)
    @@bodies << new_body
  end

# will add up the mass of all bodies in @bodies and return it.
  def self.total_mass
    @@bodies.each do |body|
      @@total_mass += body.mass.to_i
    end
    @@total_mass
  end
end


#**********----START OF BODY CLASS----***********
class Body < System

# Each body will need a name and a mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  # READER
  def name
    @name
  end

  def mass
    @mass
  end
end


#**********----START OF PLANET CLASS----***********
class Planet < Body

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

  def self.create(name, mass, day, year)
    new_planet = Planet.new(name, mass, day, year)
    @@bodies << new_planet
  end
end


#**********----START OF STAR CLASS----***********
class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
# binding.pry
  def self.create(name, mass, type)
    new_star = Star.new(name, mass, type)
    @@bodies << new_star
  end

end


#**********----START OF MOON CLASS----***********
class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

  def self.create(name, mass, month, planet)
    new_moon = Moon.new(name, mass, month, planet)
    @@bodies << new_moon
  end

end

sun = Star.create("Sun", "198900000000000000000000000000000" , "G2V")
puts sun.inspect

earth = Planet.create("Earth", "597200000000000000000000000", "24 hours", "364 days")
puts earth.inspect

earth_moon = Moon.create("Moon", "73500000000000000000000", "27 days", "Earth")
puts earth_moon.inspect

puts System.bodies.inspect
puts System.total_mass
