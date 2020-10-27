require 'docking_station'

describe DockingStation do
  docking_station = described_class.new

  describe "#release" do
    it "releases the bike" do
      expect(docking_station).to respond_to(:release_bike)
    end

    it "responds to working? method in Bike class" do
      bike = docking_station.release_bike
      expect(bike).to respond_to(:working?)
    end
  end
end
