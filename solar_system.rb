class SolarSystem
  
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def find_planet_by_name(planet_name)
    return @planets.find{|planet| planet.name == planet_name.capitalize}
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    planets_list = []
    @planets.each_with_index{|planet, index| planets_list << "#{index+1}. #{planet.name}"}
    return "Planets orbiting #{@star_name}: \n#{planets_list.join("\n")}"
  end

end