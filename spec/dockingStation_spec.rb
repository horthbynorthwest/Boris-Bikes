require 'docking_station'

describe DockingStation do
  docking_station = described_class.new
  bike = Bike.new

  # responds to release_bike method"
    it { docking_station.should respond_to(:release_bike) }

  # "responds to working? method in Bike class"
    it { bike.should respond_to(:working?) }

    it "checks the bike is working" do
      expect(bike.working?).to eq true
    end
  end

  describe '#release bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    it "releases a bike" do
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end
  end

    describe '#release_bike' do
      docking_station = DockingStation.new
      bike = Bike.new
      it 'raises an error when there are no bikes available' do
        #let's not dock a bike first:
        expect { docking_station.release_bike }.to raise_error 'No bikes available'
      end
    end

   describe '#dock' do
     docking_station = DockingStation.new
     bike = Bike.new
     it { docking_station.should respond_to(:dock).with(1).argument }

     it "docks something" do
       expect(docking_station.dock(bike)).to eq bike
     end
    it 'raises an error when full' do
        #20.times {docking_station.dock bike }
         expect { docking_station.dock bike}.to raise_error 'Docking station full'
  end
end
