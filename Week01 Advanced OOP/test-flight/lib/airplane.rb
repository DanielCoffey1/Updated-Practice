class Airplane
  attr_reader :type, :wing_loading, :horsepower
  attr_accessor :started, :flying, :fuel
  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @started = false
    @flying = false
    @fuel = 5
  end

  def start
    if @fuel < 1
      return "Need to refuel."
    elsif started
      return "Plane already started."
    else @fuel -= 1
      return "Started plane."
    end
  end

  def takeoff
    if @fuel < 1
      return "Need to refuel"
    elsif @started && !@flying
      @flying = true
      @fuel -= 1
      return "Taking off."
    elsif !@started && !@flying
      return "Started the plane."
    else @flying
      return "Already flying."
    end
  end

  def land
    if @fuel < 1
      return "Need to refuel."
    elsif @flying
      @fuel -= 1
      return "Plane landed."
    elsif !@started
      return "Start the plane."
    else @started && !@flying
      return "Take off first."
    end
  end
end
