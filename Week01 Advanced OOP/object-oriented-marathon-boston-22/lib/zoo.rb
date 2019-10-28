class Zoo
  attr_reader :cages, :employees
  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    10.times do
      @cages << Cage.new
    end
    @employees = []

  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    @season_opening_date <= date && date <= @season_closing_date
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        break
      end
    end
  end

  def visit
    output = " "
    @employees.each do |employee|
      output += employee.greet + "\n"
    end
  end

  @cages.each do |cage|
    if !cage.empty?
      output += cage.animal.speak + "\n"
    end
    output
  end
end
