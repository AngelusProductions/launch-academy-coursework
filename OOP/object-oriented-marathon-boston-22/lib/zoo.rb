class Zoo
  # attr_reader :season_opening_date
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []
    build_cages
  end

  def build_cages
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(employee)
    @employees << employee
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      end
    end
  end

  def open?(date)
    @season_opening_date <= date && @season_closing_date >= date
  end

  def visit
    stuff_said = ""

    @employees.each do |employee|
      stuff_said << "#{employee.greet}\n"
    end

    @cages.each do |cage|
      if !cage.empty?
        stuff_said << "#{cage.animal.speak}\n"
      end
    end

    stuff_said
  end
end
