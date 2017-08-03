module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end

  def so_high
    puts "I'm so high in the sky, just like a butterfly!"
  end
  
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)
bird.so_high

plane = Plane.new
plane.take_off(30000)
plane.so_high