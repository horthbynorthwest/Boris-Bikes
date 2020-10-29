class DockingStation
  @@bike = 0

  def release_bike
    Bike.new
  end
  def dock_bike
    if @@bike == 0
      @@bike +=1
      "Bike docked!"
    elsif @@bike == 1
      "No room for bikes"
    end
  end
end
