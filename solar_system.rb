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
