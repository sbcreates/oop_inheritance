class System

# starting out we will have no bodies in our system and total mass is 0
  def initialize
    @bodies = []
    @total_mass = 0
  end

# reader
  def bodies
    @bodies
  end

# instance method which will add a celestial body to the list
  def add
    @bodies << new_body
    @bodies
  end

# will add up the mass of all bodies in @bodies and return it.
  def total_mass
    @bodies.each do |body|
      @total_mass += body.mass
    end
    @total_mass
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
end


#**********----START OF STAR CLASS----***********
class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
end


#**********----START OF MOON CLASS----***********
class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end

sun = Star.new("Sun", "1.989 × 10^30 kg" , "G2V")
earth = Planet.new("Earth", "5.972 × 10^24 kg", "24 hours", "364 days")
earth_moon = Moon.new("Moon", "7.35 x 10^22 kg", "27 days", "Earth")
