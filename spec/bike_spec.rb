require 'bike'

describe Bike do
  bike = described_class.new
  # "checks bike responds to  working"
    it { bike.should respond_to(:working?) }
end
