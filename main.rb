class Employee

  def prepare(bike)
    bike.prepare
  end

end

class Bike

  def prepare
    # This message should never show

    # In this world... Bikes can speak... : )
    puts 'Uhh, boss, I dunno how to do that.'
  end

end

class BmxBike < Bike

  def prepare
    puts 'Cleaning...'
  end

end

class RoadBike < Bike

  def prepare
    puts 'Lubricating gears...'
  end

end

class MountainBike < Bike

  def prepare
    puts 'Adjusting suspension...'
  end

end

class Tricycle < Bike

  def prepare
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end
