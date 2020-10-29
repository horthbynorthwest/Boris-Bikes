require 'docking_station'

describe DockingStation do
  docking_station = described_class.new
  bike = docking_station.release_bike

  # responds to release_bike method"
    it { docking_station.should respond_to(:release_bike) }

    it "release_bike produces a new instance of the Bike class" do
       expect(docking_station.release_bike).to be_instance_of(Bike)
     end

  # "responds to working? method in Bike class"
    it { bike.should respond_to(:working?) }

    it "checks the bike is working" do
      expect(bike.working?).to eq true
    end

    it { docking_station.should respond_to(:dock_bike) }

    it "release_bike releases a bike" do
      expect(docking_station.release_bike).to eq "Bike released!"
    end

    it "doesn't let you take a bike from an empty docking station" do
      @bike == 0
      expect(subject.release_bike).to eq ("No bikes available")
    end

    it "dock_bike docks bike" do
      expect(docking_station.dock_bike).to eq "Bike docked!"
    end

    it "doesn't let you put a bike into a full docking station" do
      @bike == 1
      expect(subject.dock_bike).to eq ("No room for bikes")
    end
end
