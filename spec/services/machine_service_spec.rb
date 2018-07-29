require 'rails_helper'

describe MachineService do
  describe 'it makes a post request' do
    it 'should give back the beacon locations' do
      gps = Beacon.create!(lat: 39.996292, long: -105.23503)
      machine_response = MachineService.post(1, gps)

      expect(machine_response).to be_a Hash
      expect(machine_response[:id]).to eq(1)
      expect(machine_response[:last_location][:lat]).to eq(39.996292)
      expect(machine_response[:last_location][:long]).to eq(-105.23503)
    end
  end
end
